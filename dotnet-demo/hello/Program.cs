using System.Runtime.InteropServices;

var builder = WebApplication.CreateBuilder(args).UseWasiConnectionListener();

var app = builder.Build();

app.MapGet("/", () => {
  return $"👋 Hello, World! 🌍 🖥️: {RuntimeInformation.OSArchitecture} ⏳: {DateTime.UtcNow.ToLongTimeString()} (UTC)";
});

app.Run();

