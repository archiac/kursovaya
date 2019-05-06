package shop.entity;

import org.springframework.security.core.GrantedAuthority;

public enum ItemType implements GrantedAuthority {
    LAPTOP, PHONE;

    @Override
    public String getAuthority() {
        return name();
    }
}
