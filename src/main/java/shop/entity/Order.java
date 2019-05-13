package shop.entity;

import javax.persistence.*;

@Entity
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idorder;

    private String _username;

    private String _model;
    private String _description;
    private int _qty;
    private int _amount;
    private String _address;
    private String payment;

    private boolean active;

    public Order() {
    }

    public Order(String _username, String _model, String _description, int _qty, int _amount, String _address, String payment, boolean active) {
        this._username = _username;
        this._model = _model;
        this._description = _description;
        this._qty = _qty;
        this._amount = _amount;
        this._address = _address;
        this.payment=payment;
        this.active=active;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public String get_address() {
        return _address;
    }

    public void set_address(String _address) {
        this._address = _address;
    }

    public Long getIdorder() {
        return idorder;
    }

    public void setIdorder(Long idorder) {
        this.idorder = idorder;
    }

    public String get_username() {
        return _username;
    }

    public void set_username(String _username) {
        this._username = _username;
    }

    public String get_model() {
        return _model;
    }

    public void set_model(String _model) {
        this._model = _model;
    }

    public String get_description() {
        return _description;
    }

    public void set_description(String _description) {
        this._description = _description;
    }

    public int get_qty() {
        return _qty;
    }

    public void set_qty(int _qty) {
        this._qty = _qty;
    }

    public int get_amount() {
        return _amount;
    }

    public void set_amount(int _amount) {
        this._amount = _amount;
    }
}
