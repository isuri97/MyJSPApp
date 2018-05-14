package org.servlet;

import org.jboss.resteasy.specimpl.MultivaluedMapImpl;

import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.core.Response;

public class Client extends AbstractRestClient {

    public Client() {

        super("https://localhost:9443/api/identity/oauth2/uma/resourceregistration/v1.0/resource/");

    }

    public Resource getResource(String id) throws Exception {

        Response response = null;
        try {
            MultivaluedMap queryParams = new MultivaluedMapImpl();
            queryParams.add("Authorization", "Bearer e0167e9b-24f3-38ad-8474-8ade7f7fc769");
            response = super.get(this.targetServiceUrl + id, queryParams);
            System.out.println(id);
            Resource resource = response.readEntity(Resource.class);
            System.out.println(resource.toString());
            return resource;
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception(e);
        } finally {
            close(response);
        }
    }

    public Resource getAllResource() throws Exception {

        Response response = null;
        try {

            MultivaluedMap queryParams = new MultivaluedMapImpl();
            queryParams.add("Authorization", "Bearer 69d332d6-48d2-355c-b264-30b66fd79b1b");
            response = super.get(this.targetServiceUrl + queryParams);
            Resource resource = response.readEntity(Resource.class);
            System.out.println(resource.toString());
            return resource;
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception(e);
        } finally {
            close(response);
        }

    }

   /* public Resource deleteResource() throws Exception {

        Response response = null;
        try {
            MultivaluedMap queryParams = new MultivaluedMapImpl();
            queryParams.add("Authorization", "Bearer 69d332d6-48d2-355c-b264-30b66fd79b1b");
            response = super.delete(this.targetServiceUrl + queryParams);

            Resource resource = response.readEntity(Resource.class);
            System.out.println(resource.toString());
            return resource;
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception(e);
        } finally {
            close(response);
        }
    }*/


    public Resource registerResource() throws Exception {
        Response response = null;
        try {
            MultivaluedMap queryParams = new MultivaluedMapImpl();
            queryParams.add("Content-Type", "application/json");
            queryParams.add("Authorization", "Bearer 69d332d6-48d2-355c-b264-30b66fd79b1b");
            response = super.get(this.targetServiceUrl + queryParams);
         //   System.out.println(id);
            Resource resource = response.readEntity(Resource.class);
            System.out.println(resource.toString());
            return resource;
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception(e);
        } finally {
            close(response);
        }

    }
}
