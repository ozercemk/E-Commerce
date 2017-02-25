<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Search.ascx.cs" Inherits="E_Comemerce_Controls_Search" %>


     <div class="col-xs-7 col-sm-7 header-search-box">
                <div class="form-inline">
                      <div class="form-group form-category">
                        <select class="select-category">
                            <option value="2">All Categories</option>
                            <option value="1">Men</option>
                            <option value="3">Women</option>
                        </select>
                      </div>
                      <div class="form-group input-serach">
                          <asp:TextBox ID="Keywors_txt" Text="Keyword here..." runat="server"></asp:TextBox> 
                      </div>
                    <asp:LinkButton ID="Search" CssClass="pull-right btn-search" runat="server"></asp:LinkButton>
                    
                </div>
            </div>