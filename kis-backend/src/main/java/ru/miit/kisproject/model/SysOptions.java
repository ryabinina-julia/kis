package ru.miit.kisproject.model;

/**
 * Table: sys_options
 */
public class SysOptions {
    /**
     * Column: option_name
     * Type: varchar(2147483647)
     * Remark: Название
     */
    private String optionName;

    /**
     * Column: option_value
     * Type: varchar(2147483647)
     * Remark: Значение
     */
    private String optionValue;

    public String getOptionName() {
        return optionName;
    }

    public void setOptionName(String optionName) {
        this.optionName = optionName == null ? null : optionName.trim();
    }

    public String getOptionValue() {
        return optionValue;
    }

    public void setOptionValue(String optionValue) {
        this.optionValue = optionValue == null ? null : optionValue.trim();
    }
}