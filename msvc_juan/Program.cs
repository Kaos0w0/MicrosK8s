var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Hello from getial microservice, my name is Juan Sebastian Getial, and I love you guys, you are the best team");

app.Run();
