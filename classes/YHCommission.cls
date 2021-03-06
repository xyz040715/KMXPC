//Generated by wsdl2apex

public class YHCommission {
    public class getCommissions {
        public String arg0;
        public String arg1;
        private String[] arg0_type_info = new String[]{'arg0','http://onboarding.salesforce.com/',null,'0','1','false'};
        private String[] arg1_type_info = new String[]{'arg1','http://onboarding.salesforce.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://onboarding.salesforce.com/','false','false'};
        private String[] field_order_type_info = new String[]{'arg0','arg1'};
    }
    public class getCommissionsResponse {
        public Double return_x;
        private String[] return_x_type_info = new String[]{'return','http://onboarding.salesforce.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://onboarding.salesforce.com/','false','false'};
        private String[] field_order_type_info = new String[]{'return_x'};
    }
    public class GetCommisionsPort {
        public String endpoint_x = 'http://onboarding-services.herokuapp.com/services/commissions';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://onboarding.salesforce.com/', 'YHCommission'};
        public Double getCommissions(String arg0,String arg1) {
            YHCommission.getCommissions request_x = new YHCommission.getCommissions();
            request_x.arg0 = arg0;
            request_x.arg1 = arg1;
            YHCommission.getCommissionsResponse response_x;
            Map<String, YHCommission.getCommissionsResponse> response_map_x = new Map<String, YHCommission.getCommissionsResponse>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://onboarding.salesforce.com/',
              'getCommissions',
              'http://onboarding.salesforce.com/',
              'getCommissionsResponse',
              'YHCommission.getCommissionsResponse'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.return_x;
        }
    }
}