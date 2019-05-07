package shop.entity;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "item")
public class Item {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;
    private String description;
    private double price;
    private boolean isexist;
    private int qty;
    private String options;

    @ElementCollection(targetClass = ItemType.class, fetch = FetchType.EAGER)
    @CollectionTable(name = "item_type", joinColumns = @JoinColumn(name = "item_id"))
    @Enumerated(EnumType.STRING)
    private Set<ItemType> type;

    public Item(String name, String description, double price, boolean isexist, int qty, String options, Set<ItemType> type) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.isexist = isexist;
        this.qty = qty;
        this.options = options;
        this.type = type;
    }

    public Item() {
    }

    public Set<ItemType> getType() {
        return type;
    }

    public void setType(Set<ItemType> type) {
        this.type = type;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public boolean isIsexist() {
        return isexist;
    }

    public void setIsexist(boolean isexist) {
        this.isexist = isexist;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

    public String getOptions() {
        return options;
    }

    public void setOptions(String options) {
        this.options = options;
    }
}
