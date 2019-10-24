<template>
    <div>
        <div class="modal-header">
            <button type="button" class="close" @click="closeform"><span aria-hidden="true">×</span></button>
            <h4 class="modal-title"> Internet </h4>
        </div>
        
            <div :class="{'form-group': true}" >
                <label class="control-label col-md-3">Start Date</label>
                <div class="input-group col-md-9">
                    <input v-model="items_form.start_date" type="text"
                           class="form-control"
                           name="start_date"
                           v-validate="'required'"
                           placeholder="Start Date">
                </div>
            </div>
            <div :class="{'form-group': true}" >
                <label class="control-label col-md-3">Start Time</label>
                <div class="input-group col-md-9">
                    <input v-model="items_form.start_time" type="text"
                           class="form-control"
                           name="start_time"
                           v-validate="'required'"
                           placeholder="Start Time">
                </div>
            </div>
            
            <div :class="{'form-group': true}" >
                <label class="control-label col-md-3">End Time</label>
                <div class="input-group col-md-9">
                    <input v-model="items_form.end_time" type="text"
                           class="form-control"
                           name="end_time"
                           v-validate="'required'"
                           placeholder="End Time">
                </div>
            </div>
            <div :class="{'form-group': true}" >
                <label class="control-label col-md-3">Duration</label>
                <div class="input-group col-md-9">
                    <input v-model="items_form.duration_in_hrs" type="text"
                           class="form-control"
                           name="duration_in_hrs"
                           v-validate="'required'"
                           placeholder="Duration In Hours">
                </div>
            </div>
            <div :class="{'form-group': true}" >
                <label class="control-label col-md-3">Comments</label>
                <div class="input-group col-md-9">
                    <input v-model="items_form.comment" type="text"
                           class="form-control"
                           name="comment"
                           v-validate="'required'"
                           placeholder="Comments">
                </div>
            </div>

          
       
            <button type="submit" @click="submitform" class="btn btn-primary" value="Save"><span class="fa fa-check-circle"></span>
                {{(submitted)?'Please wait...':'Save'}}
            </button>
       

    </div>
</template>
<script>
    import vSelect from "vue-select"
    export default {
        data: () => ({
            items_form: {
                start_date: '',
                start_time:'',
                end_date: '',
                end_time:'',
                comment:'',
                id:''

            },
            submitted:false,
            selected:null,
            checkstypes:[],
        }),
        methods: {
            closeform() {
                this.$modal.hide('internet-form');
            },
            submitform() {
                this.submitted = true;
                this.$http.post('outages/save', this.items_form)
                    .then((res) => {
                        this.submitted = false;
                        this.closeform();
                    }, (res)=>{
                        this.submitted = false;
                        this.closeform();
                    });
            },

        },
        components: {
            vSelect
        },
        mounted() {
            if (Object.keys(this.edit_data).length > 0) {
                this.items_form.start_date = this.edit_data.start_date
                this.items_form.id = this.edit_data.id
                this.items_form.comment = this.edit_data.comment
                this.items_form.start_time = this.edit_data.start_time
                this.items_form.end_date = this.edit_data.end_date
                this.items_form.end_time = this.edit_data.end_time
            }

        },
        props: {
            edit_data: {
                type: Object,
                required: true
            }
        }
    }
</script>
