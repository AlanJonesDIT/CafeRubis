// Name: Alan Jones
// Student No.: C16719689

void setup()
{
  size(800,600);
  loadData();
  printProducts();
}

void loadData()
{
  Table table = loadTable("cafe.csv", "header");
  for(TableRow row:table.rows())
  {
    Product product = new Product(row);    
    products.add(product);
  }
}

void printProducts()
{
  for(Product product:products)
  {
    println(product);
  }
}

ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();