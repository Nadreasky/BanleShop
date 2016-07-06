using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BanleWebsite.Startup))]
namespace BanleWebsite
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
