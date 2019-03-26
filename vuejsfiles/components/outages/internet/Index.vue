<template>
	<div class="panel clearfix">

		<div class="panel clearfix">
			<div class="page-title clearfix">
				<h1>List of Internet Outages</h1>
				<div class="title-button-group">
					<a class="btn btn-default" @click="additems" title="Add project"><i class="fa fa-plus-circle"></i>
						Add Outages</a>
				</div>
			</div>
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane fade active in" id="monthly-invoices">
					<vue-table :fields="columns" class="table [css.tableClass]"
							   :api-url="url"
							   ref="vuetable"
							   :noDataTemplate="noDataTemplate"
							   :sort-order="sortOrder"
							   table-class="table table-bordered table-striped table-hover"
							   data-path="data"
							   pagination-path="links"
							   @vuetable:pagination-data="onPaginationData"
							   @vuetable:loading="onStartLoading"
							   @vuetable:loaded="onLoaded">

						<template slot="actions" slot-scope="props">
							<div class="table-button-container">
								<a @click="updateRow(props.rowData)" ><i class="fa fa-pencil"></i></a>
								<a @click="deleteRow(props.rowData)" ><i class="fa fa-close"></i></a>
							</div>
						</template>

					</vue-table>
					<vuetable-pagination ref="pagination"
										 @vuetable-pagination:change-page="onChangePage"
					></vuetable-pagination>

				</div>
				<modal name="internet-form"  @before-close="reloadTable" width="450px" height="300px">
					<internet-form :edit_data="updaterow"></internet-form>
				</modal>
			</div>
		</div>
	</div>

</template>
<script>
    import vSelect from "vue-select"
    import columns from './fields'
    import VuetablePagination from '../../common/table/VuetablePagination.vue'
    import VueTable from '../../common/table/Vuetable.vue'
    import appdetails from '../../../helpers/appdetails'
    import InternetForm from './InternetForm.vue'

    export default {
        data: () => ({
            data: 0,
            columns: columns,
            url: appdetails.approoturl + '/outages/list_internets',
            sortOrder: [{
                field: 'start_date',
                direction: 'asc'
            }],
            showloading: false,
            selected: null,
            updaterow: {},
        }),
        computed: {
            noDataTemplate() {
                return (this.showloading) ? 'Please wait getting all outages...' : 'No outages exist add some'
            }
        },
        components: {
            VuetablePagination, VueTable, vSelect,InternetForm
        },
        methods: {
            deleteRow(data){
                this.$dialog.confirm('Are you sure you would like to delete '+data.name,{loader:true})
                    .then( (dialog)=>{
                        this.$http.post('outages/delete', data)
                            .then((res) => {
                                dialog.close();
                                this.reloadTable();
                            }, (err) => {
                                dialog.close();
                            });
                    })
            },
            updateRow(data){
                this.updaterow = data;
                this.$modal.show('internet-form');
            },
            reloadTable(){
                this.$refs.vuetable.reload();
            },
            additems(){
                this.$modal.show('internet-form');

            },
            fetchinternet() {
                this.$emit('outagechanged', false);

                this.$http.get('outages/list_internets')
                    .then((res) => {

                        this.$emit('outagechanged', true);
                    }, (err) => {

                        this.$emit('outagechanged', false);
                    });
            },

            onPaginationData(paginationData) {

                this.$refs.pagination.setPaginationData(paginationData);

            },
            onChangePage(page) {
                this.$refs.vuetable.changePage(page)
            },
            onStartLoading() {
                this.showloading = true;
            },
            onLoaded() {
                this.showloading = false;
            }
        },

        mounted() {
            this.fetchinternet();
        }

    }
</script>
<style>
	.table-button-container a {
		cursor: pointer;

	}
</style>