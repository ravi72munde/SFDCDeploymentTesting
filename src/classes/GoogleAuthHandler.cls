global class GoogleAuthHandler implements Auth.RegistrationHandler {

    global User createUser(Id portalId, Auth.UserData data) {
        /*if (data.attributeMap.containsKey('sfdc_networkid')) {
            User u = [Select id,name from User where Id = '00528000001JKO2' limit 1];
            if(data.email.contains('@box.com')){
                
            }
            return u;
        }
        
        return null;*/
        if(!String.valueOf(data.email).containsIgnoreCase('@box.com') 
            &&!String.valueOf(data.email).containsIgnoreCase('ravi72munde') ){
            return null;
        }
        return [Select id from User where id = '00528000001JKO2' limit 1];
    }

    global void updateUser(Id userId, Id portalId, Auth.UserData data) {
        User u = new User(id = userId);
        //u.lastName = data.lastName;
       // u.firstName = data.firstName;
        /*Http h = new Http();
        HttpRequest req = new HttpRequest();
        string firstImageURL = data.attributeMap.get('picture');
        firstImageURL = firstImageURL.replace(' ', '%20');
        req.setEndpoint(firstImageURL);
        req.setMethod('GET');
        req.setHeader('Content-Type', 'image/jpeg');
        req.setCompressed(true);
        req.setTimeout(60000);
        HttpResponse res = null;
        res = h.send(req);
        string responseValue = '';
        responseValue = res.getBody();
        blob image = res.getBodyAsBlob();
        ConnectApi.BinaryInput photo = new ConnectApi.BinaryInput(image, 'image/jpg', 'photo.jpg');
        ConnectApi.UserProfiles.setPhoto(null, u.Id, photo);*/
        update(u);
    }

}