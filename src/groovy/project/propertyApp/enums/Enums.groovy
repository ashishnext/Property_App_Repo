package project.propertyApp.enums

class Enums {

    public enum PropertyFor {
        SALE, RENT

        public static List<PropertyFor> propertyForList() {
            return [SALE, RENT]
        }
    }

    public enum Possession {
        Immediate, With_IN_3_Months, With_IN_6_Months, BY_2017, BY_2018

        public static List<Possession> possessionList() {
            return [Immediate, With_IN_3_Months, With_IN_6_Months, BY_2017, BY_2018]
        }
    }

    public enum HouseType {
        Apartment, Villa, Farm_House, Studio_Apartment

        public static List<HouseType> houseTypeList() {
            return [Apartment, Villa, Farm_House, Studio_Apartment]
        }
    }

    public enum OfficeType {
        Independent_Office, Shop, Showroom, In_IT_Park, In_Mall

        public static List<OfficeType> officeTypeList() {
            return [Independent_Office, Shop, Showroom, In_IT_Park, In_Mall]
        }
    }

    public enum Amenities {
        Lift, Water_Storage, Atm, Conference_Room, Gym

        public static List<Amenities> amenitiesList() {
            return[Lift, Water_Storage, Atm, Conference_Room, Gym]

        }
    }
}
