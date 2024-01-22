CREATE TABLE Dim_Books (
  Pk_Book_id_Sk INT IDENTITY(1,1) PRIMARY KEY ,
  Book_id_BK INT,
  title VARCHAR(40),
  isbn13 VARCHAR(13),
  language_id_bk INT,
  num_pages INT,
  publication_date DATE,
  publisher_id_bk INT,
  publisher_name VARCHAR(1000),
  author_id_bk INT,
  author_name VARCHAR(400),
  language_code VARCHAR(8),
  language_name VARCHAR(50),
  start_date DATE,
  end_date DATE,
  is_currnt BIT,

);

CREATE TABLE Dim_Orders (
    Pk_order_id_Sk INT IDENTITY(1,1) PRIMARY KEY,
    order_id_BK INT,
    dest_address_id_bk INT,
    shipping_method_id_bk INT,
    method_name VARCHAR(100),
    history_id_bk INT,
    status_id_bk INT,
    status_date DATETIME,
    status_value VARCHAR(20),
    address_id_bk INT,
    street_number VARCHAR(10),
    street_name VARCHAR(200),
    city VARCHAR(100),
    country_id INT,
    country_name VARCHAR(200),
    line_id_bk INT,
	start_date DATE,
    end_date DATE,
    is_currnt BIT,
    
);

CREATE TABLE Dim_Customers (
    Pk_customer_id_Sk INT IDENTITY(1,1) PRIMARY KEY,
    customer_id_BK INT,
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    email VARCHAR(350),
    status_id_bk INT,
    address_status VARCHAR(30),
    street_number VARCHAR(10),
    city VARCHAR(100),
    country_id_bk INT,
    country_name VARCHAR(200),
    address_id_bk INT,
    street_name VARCHAR(200),
	start_date DATE,
    end_date DATE,
    is_currnt BIT,
);


CREATE TABLE FactSales (
	Fact_Transaction_Pk_Sk INT IDENTITY(1,1) PRIMARY KEY, 
    CustomerID_FK INT NOT NULL,
    BookID_FK INT NOT NULL,
    OrderDate_FK INT NOT NULL,
    OrderID_FK INT NOT NULL,
    created_at DATETIME DEFAULT GETDATE(),
	BookPrice DECIMAL(5,2),
    ShippingCost DECIMAL(6,2),
    LineID_BK INT NOT NULL,

    CONSTRAINT FK_FactSales_DimOrder FOREIGN KEY (OrderID_FK) REFERENCES Dim_Order(Pk_order_id_Sk),
    CONSTRAINT FK_FactSales_DimBook FOREIGN KEY (BookID_FK) REFERENCES Dim_Book([Pk_ Book_id_Sk]), 
    CONSTRAINT FK_FactSales_DimCustomers FOREIGN KEY (CustomerID_FK) REFERENCES Dim_Customers(Pk_customer_id_Sk)
);
