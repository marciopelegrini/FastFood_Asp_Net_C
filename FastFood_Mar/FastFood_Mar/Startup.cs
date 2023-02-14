using FastFood_Mar.Areas.Admin.Servicos;
using FastFood_Mar.Context;
using FastFood_Mar.Models;
using FastFood_Mar.Repositories;
using FastFood_Mar.Repositories.Interfaces;
using FastFood_Mar.Services;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using ReflectionIT.Mvc.Paging;

namespace FastFood_Mar;
public class Startup
{
    public Startup(IConfiguration configuration)
    {
        Configuration = configuration;
    }

    public IConfiguration Configuration { get; }

    // This method gets called by the runtime. Use this method to add services to the container.
    public void ConfigureServices(IServiceCollection services)
    {
        var serverVersion = new MySqlServerVersion(new Version(8, 0, 29));

        // Conector para o SQLServer
        //services.AddDbContext<AppDBContext>(options => options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection")));

        //Conector para o MySql
        //services.AddDbContext<AppDbContext>(options =>
        //        options.UseMySql(Configuration.GetConnectionString("MySQLConnection"), serverVersion));

        //Conector para SQLite


        services.AddIdentity<IdentityUser, IdentityRole>()
            .AddEntityFrameworkStores<AppDbContext>()
            .AddDefaultTokenProviders();

        
    }

    // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
    public void Configure(IApplicationBuilder app, IWebHostEnvironment env, ISeedUserRoleInitial seedUserRoleInitial)
    {
        
    }
}