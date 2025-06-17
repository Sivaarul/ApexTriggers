import { LightningElement } from 'lwc';

export default class ShowDataLWC extends LightningElement {
    name = '';
    greetings = '';

    handleChange(event) {
        this.name = event.target.value;
        console.log(this.name);
    }
    onclickhandle()
    {
        this.greetings = this.name;
    }
}