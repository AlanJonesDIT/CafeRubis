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

void displayProducts()
{
  int productLen = products.size();
  float productHeight = ((height-(borderTopBottom*2))/productLen)-10;
  float productWidth = 300; 
    
  for(Product product:products)
  {
    fill(255);
    stroke(0);
    rect(borderLeftRight,borderTopBottom,productWidth,productHeight);
    fill(0);
    textAlign(LEFT, CENTER);
    text(product.name, borderLeftRight + 10, borderTopBottom+20); // change the 20
    textAlign(RIGHT, CENTER);
    text(nf(product.price,2,2), (borderLeftRight+productWidth), borderTopBottom+20);
    borderTopBottom += (productHeight+10);
  }  
}

ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

int borderTopBottom = 50;
int borderLeftRight = 30;

void draw()
{
  background(60);
  displayProducts();
  noLoop();
}