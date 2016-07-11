package ebay.rest.resource;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import ebay.rest.model.ItemModel;
import ebay.rest.service.ColorandBrandService;

import javax.ws.rs.core.GenericEntity; 



@Path("/ebay")
public class EbayRestResource {

	
@GET
@Path("/colorbrandservice/{color}/{brand}")
@Produces(MediaType.APPLICATION_JSON)
public Response getItemDetails(@PathParam("color") String color,@PathParam("brand") String brand)
{
	ColorandBrandService cbservice=new ColorandBrandService();
	GenericEntity<ArrayList<ItemModel>> list = new GenericEntity<ArrayList<ItemModel>>(cbservice.getItemModelsforColor(color,brand)) {};
	return Response.ok(list).build();
}

@GET
@Path("/colorpriceservice/{color}/{price1}/{price2}")
@Produces(MediaType.APPLICATION_JSON)
public Response getItemPriceDetails(@PathParam("color") String color,@PathParam("price1") int price1,@PathParam("price2") int price2)
{
ColorandBrandService cbservice=new ColorandBrandService();
GenericEntity<ArrayList<ItemModel>> list = new GenericEntity<ArrayList<ItemModel>>(cbservice.getItemModelsforColorandprice(color,price1,price2)) {};
return Response.ok(list).build();
}



}
