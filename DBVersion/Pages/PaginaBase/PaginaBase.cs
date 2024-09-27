using Blazored.LocalStorage;
using DBVersion.Data;
using DBVersion.DataAccess;
using DBVersion.Pages.Login;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Http;
using Microsoft.JSInterop;
using System;
using System.Data;
using System.Globalization;
using System.Text;

namespace DBVersion.Pages.PaginaBase
{
    public class PaginaBase : ComponentBase
    {
        [Inject]
        protected IJSRuntime JSRuntime { get; set; }

        [Inject]
        protected ILocalStorageService sessionStorage { get; set; }

        [Inject]
        protected NavigationManager NavManager { get; set; }

        protected bool mostrarInfo { get; set; } = false;

        protected int idUsuario;

        
        protected bool MostrarInformacion()
        {
            try
            {    
                if (idUsuario == 0)
                {
                    return false;
                }
                
                mostrarInfo = true;
                return true;
            }
            catch
            {
                return false;
            }
        }

        protected override async Task OnInitializedAsync()
        {
            try
            {
                idUsuario = await sessionStorage.GetItemAsync<int>("IdUsuario");
                if (MostrarInformacion()) return;
            }
            catch { }
        }

        protected override async Task OnAfterRenderAsync(bool render)                       
        {
            try
            {
                if (await sessionStorage.GetItemAsync<int>("IdUsuario") == 0)
                {
                    NavManager.NavigateTo("/login", true);
                    return;
                }

            }
            catch { }
        }

    }
}
