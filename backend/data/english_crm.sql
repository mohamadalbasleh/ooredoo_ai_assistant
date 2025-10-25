-- Ooredoo B2B CRM Database (English)
-- Generated for SME AI Assistant Training
-- Contains 100+ business customer records

-- Create database schema
-- Removed MySQL directive: CREATE DATABASE ooredoo_crm_en;
-- Removed MySQL directive: USE ooredoo_crm_en;

-- Customers table
CREATE TABLE IF NOT EXISTS customers (
    customer_id TEXT(20) PRIMARY KEY,
    company_name TEXT(200) NOT NULL,
    industry_sector TEXT(50) NOT NULL,
    service_tier TEXT(20) NOT NULL,
    sla_level TEXT(20) NOT NULL,
    registration_date TEXT NOT NULL,
    monthly_spend REAL(10, 2) NOT NULL,
    account_manager TEXT(100),
    payment_history TEXT(20),
    credit_limit REAL(10, 2),
    company_size TEXT(20),
    address TEXT,
    city TEXT(50),
    phone TEXT(20),
    email TEXT(100),
    status TEXT(20)
);

INSERT INTO customers VALUES ('SME000001', 'TechVision Solutions', 'Construction', 'Platinum', 'Standard', '2021-11-04', 5388.34, 'Mohammed Al-Thani', 'Excellent', 12291.08, 'Small (1-10)', 'Building 1, Zone 35', 'Doha', '+974-3629-2505', 'techvision.solutions@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000002', 'Green Energy Qatar', 'Construction', 'Gold', 'Premium', '2023-10-30', 10599.21, 'Mohammed Al-Thani', 'Fair', 58367.85, 'Large (51-200)', 'Building 2, Zone 13', 'Doha', '+974-3964-1259', 'green.energy.qatar@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000003', 'Gulf Trading Co', 'Manufacturing', 'Gold', 'Standard', '2020-05-04', 5374.52, 'Jennifer Davis', 'Good', 14277.96, 'Large (51-200)', 'Building 3, Zone 38', 'Doha', '+974-9670-8793', 'gulf.trading.co@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000004', 'Smart Logistics LLC', 'Finance', 'Platinum', 'Business', '2022-02-25', 14825.91, 'Hassan Al-Marri', 'Fair', 83748.32, 'Large (51-200)', 'Building 4, Zone 16', 'Doha', '+974-4202-9156', 'smart.logistics.llc@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000005', 'Pearl Healthcare Center', 'Education', 'Bronze', 'Premium', '2021-07-04', 7312.18, 'Mohammed Al-Thani', 'Fair', 40028.65, 'Small (1-10)', 'Building 5, Zone 6', 'Doha', '+974-5944-3926', 'pearl.healthcare.center@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000006', 'Digital Marketing Hub', 'Manufacturing', 'Gold', 'Business', '2018-09-08', 646.96, 'Lisa Anderson', 'Needs Attention', 1654.52, 'Large (51-200)', 'Building 6, Zone 34', 'Doha', '+974-3809-9287', 'digital.marketing.hub@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000007', 'Al Khaleej Retail Group', 'Manufacturing', 'Platinum', 'Standard', '2020-07-12', 13553.24, 'Jennifer Davis', 'Excellent', 63389.46, 'Large (51-200)', 'Building 7, Zone 76', 'Doha', '+974-5589-5133', 'al.khaleej.retail.group@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000008', 'Modern Construction Ltd', 'Construction', 'Bronze', 'Business', '2021-01-18', 2034.61, 'Mohammed Al-Thani', 'Fair', 4495.39, 'Small (1-10)', 'Building 8, Zone 45', 'Doha', '+974-7662-7585', 'modern.construction.ltd@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000009', 'Elite Education Services', 'Hospitality', 'Silver', 'Enterprise', '2021-04-27', 804.69, 'Khalid Al-Ansari', 'Good', 3018.3, 'Large (51-200)', 'Building 9, Zone 65', 'Doha', '+974-9878-5904', 'elite.education.services@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000010', 'Fast Delivery Qatar', 'Finance', 'Platinum', 'Premium', '2023-05-30', 10472.58, 'Sarah Johnson', 'Fair', 53893.75, 'Large (51-200)', 'Building 10, Zone 36', 'Doha', '+974-8702-2371', 'fast.delivery.qatar@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000011', 'Premier Hospitality Group', 'Healthcare', 'Gold', 'Business', '2021-10-02', 13282.51, 'Emma Williams', 'Good', 44039.43, 'Medium (11-50)', 'Building 11, Zone 7', 'Doha', '+974-7048-9219', 'premier.hospitality.group@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000012', 'Innovation Labs Qatar', 'Healthcare', 'Silver', 'Enterprise', '2021-05-23', 4133.2, 'Sarah Johnson', 'Needs Attention', 23022.14, 'Small (1-10)', 'Building 12, Zone 6', 'Doha', '+974-7737-1790', 'innovation.labs.qatar@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000013', 'Quantum Computing Solutions', 'Construction', 'Bronze', 'Premium', '2021-12-01', 13034.25, 'Ahmed Al-Kuwari', 'Good', 46069.76, 'Medium (11-50)', 'Building 13, Zone 83', 'Doha', '+974-7899-5223', 'quantum.computing.solutions@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000014', 'Arabian Food Industries', 'Technology', 'Gold', 'Premium', '2021-06-11', 11113.38, 'Hassan Al-Marri', 'Fair', 35558.46, 'Large (51-200)', 'Building 14, Zone 59', 'Doha', '+974-5045-9601', 'arabian.food.industries@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000015', 'Metro Transport Services', 'Retail', 'Gold', 'Premium', '2018-04-20', 9489.13, 'Lisa Anderson', 'Good', 38778.93, 'Large (51-200)', 'Building 15, Zone 49', 'Doha', '+974-3670-9897', 'metro.transport.services@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000016', 'Skyline Real Estate', 'Government', 'Platinum', 'Standard', '2020-08-14', 3228.78, 'Hassan Al-Marri', 'Excellent', 9762.43, 'Large (51-200)', 'Building 16, Zone 53', 'Doha', '+974-7226-6558', 'skyline.real.estate@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000017', 'Precision Engineering Works', 'Technology', 'Gold', 'Premium', '2018-06-22', 3752.11, 'Ahmed Al-Kuwari', 'Needs Attention', 15883.83, 'Medium (11-50)', 'Building 17, Zone 37', 'Doha', '+974-9246-7665', 'precision.engineering.works@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000018', 'Royal Fashion Boutique', 'Healthcare', 'Gold', 'Standard', '2024-01-20', 2872.64, 'Emma Williams', 'Fair', 12379.39, 'Small (1-10)', 'Building 18, Zone 52', 'Doha', '+974-9922-8826', 'royal.fashion.boutique@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000019', 'Global Import Export', 'Government', 'Silver', 'Enterprise', '2020-04-27', 8338.0, 'Lisa Anderson', 'Needs Attention', 35223.93, 'Medium (11-50)', 'Building 19, Zone 15', 'Doha', '+974-7585-7129', 'global.import.export@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000020', 'Excellence Training Institute', 'Manufacturing', 'Bronze', 'Premium', '2019-08-19', 10846.01, 'Jennifer Davis', 'Excellent', 64128.97, 'Large (51-200)', 'Building 20, Zone 79', 'Doha', '+974-6155-7054', 'excellence.training.institute@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000021', 'Urban Development Corp', 'Hospitality', 'Bronze', 'Enterprise', '2018-12-03', 9080.77, 'Lisa Anderson', 'Good', 24145.27, 'Medium (11-50)', 'Building 21, Zone 64', 'Doha', '+974-8623-1787', 'urban.development.corp@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000022', 'Quality Assurance Services', 'Technology', 'Bronze', 'Standard', '2019-03-02', 7768.37, 'Sarah Johnson', 'Needs Attention', 18351.8, 'Medium (11-50)', 'Building 22, Zone 87', 'Doha', '+974-4831-1079', 'quality.assurance.services@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000023', 'Dynamic Supply Chain', 'Hospitality', 'Bronze', 'Standard', '2024-10-16', 3025.71, 'Mohammed Al-Thani', 'Excellent', 16519.52, 'Medium (11-50)', 'Building 23, Zone 85', 'Doha', '+974-7517-1954', 'dynamic.supply.chain@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000024', 'Advanced Medical Diagnostics', 'Logistics', 'Gold', 'Premium', '2022-08-02', 526.93, 'Emma Williams', 'Fair', 1501.67, 'Large (51-200)', 'Building 24, Zone 45', 'Doha', '+974-5722-9139', 'advanced.medical.diagnostics@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000025', 'Creative Design Studio', 'Education', 'Silver', 'Premium', '2019-05-01', 6259.81, 'Khalid Al-Ansari', 'Needs Attention', 20378.25, 'Small (1-10)', 'Building 25, Zone 72', 'Doha', '+974-7588-9087', 'creative.design.studio@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000026', 'Professional Consulting Group', 'Hospitality', 'Gold', 'Premium', '2023-12-20', 1648.81, 'Ahmed Al-Kuwari', 'Good', 9535.32, 'Small (1-10)', 'Building 26, Zone 53', 'Doha', '+974-5665-7030', 'professional.consulting.group@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000027', 'Secure Banking Solutions', 'Construction', 'Gold', 'Enterprise', '2021-11-05', 7632.51, 'Mohammed Al-Thani', 'Fair', 23992.46, 'Small (1-10)', 'Building 27, Zone 81', 'Doha', '+974-3667-1018', 'secure.banking.solutions@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000028', 'Smart Home Technologies', 'Government', 'Gold', 'Enterprise', '2022-07-24', 4965.03, 'Ahmed Al-Kuwari', 'Needs Attention', 13601.74, 'Large (51-200)', 'Building 28, Zone 72', 'Doha', '+974-9038-7495', 'smart.home.technologies@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000029', 'Eco Friendly Products', 'Retail', 'Platinum', 'Standard', '2024-12-24', 4463.45, 'Ahmed Al-Kuwari', 'Fair', 25065.73, 'Large (51-200)', 'Building 29, Zone 23', 'Doha', '+974-8706-2557', 'eco.friendly.products@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000030', 'Luxury Auto Dealers', 'Government', 'Silver', 'Enterprise', '2019-09-13', 3160.68, 'Ahmed Al-Kuwari', 'Excellent', 11549.13, 'Medium (11-50)', 'Building 30, Zone 74', 'Doha', '+974-4074-8464', 'luxury.auto.dealers@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000031', 'Premium Catering Services', 'Construction', 'Silver', 'Standard', '2020-10-05', 13487.44, 'Sarah Johnson', 'Excellent', 66349.11, 'Large (51-200)', 'Building 31, Zone 99', 'Doha', '+974-3187-6981', 'premium.catering.services@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000032', 'Digital Payment Systems', 'Education', 'Silver', 'Standard', '2021-09-25', 8905.24, 'Mohammed Al-Thani', 'Needs Attention', 29642.81, 'Small (1-10)', 'Building 32, Zone 14', 'Doha', '+974-6611-9488', 'digital.payment.systems@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000033', 'Industrial Equipment Supply', 'Construction', 'Gold', 'Business', '2022-07-26', 7897.21, 'Ahmed Al-Kuwari', 'Excellent', 35597.94, 'Medium (11-50)', 'Building 33, Zone 33', 'Doha', '+974-8360-6555', 'industrial.equipment.supply@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000034', 'Marine Services Qatar', 'Finance', 'Silver', 'Premium', '2023-07-20', 4270.82, 'Mohammed Al-Thani', 'Fair', 19317.43, 'Large (51-200)', 'Building 34, Zone 68', 'Doha', '+974-9815-3160', 'marine.services.qatar@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000035', 'Aviation Support Services', 'Logistics', 'Gold', 'Enterprise', '2023-04-14', 12205.26, 'Sarah Johnson', 'Good', 53969.46, 'Medium (11-50)', 'Building 35, Zone 80', 'Doha', '+974-3320-9493', 'aviation.support.services@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000036', 'Entertainment Media Group', 'Education', 'Bronze', 'Business', '2021-10-09', 5731.62, 'Emma Williams', 'Needs Attention', 18235.07, 'Large (51-200)', 'Building 36, Zone 97', 'Doha', '+974-6761-7010', 'entertainment.media.group@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000037', 'Fitness Wellness Center', 'Government', 'Platinum', 'Standard', '2024-01-06', 11833.69, 'Hassan Al-Marri', 'Fair', 35031.5, 'Small (1-10)', 'Building 37, Zone 96', 'Doha', '+974-4745-2852', 'fitness.wellness.center@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000038', 'Legal Advisory Firm', 'Finance', 'Bronze', 'Premium', '2023-10-13', 12054.27, 'Mohammed Al-Thani', 'Fair', 54816.49, 'Small (1-10)', 'Building 38, Zone 73', 'Doha', '+974-8171-3981', 'legal.advisory.firm@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000039', 'Accounting Solutions Ltd', 'Finance', 'Silver', 'Enterprise', '2024-12-13', 768.22, 'Jennifer Davis', 'Fair', 3109.49, 'Small (1-10)', 'Building 39, Zone 12', 'Doha', '+974-6707-1211', 'accounting.solutions.ltd@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000040', 'HR Management Services', 'Hospitality', 'Silver', 'Enterprise', '2018-11-10', 11826.8, 'Mohammed Al-Thani', 'Good', 63234.72, 'Medium (11-50)', 'Building 40, Zone 77', 'Doha', '+974-6062-5971', 'hr.management.services@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000041', 'Cloud Software Development', 'Manufacturing', 'Silver', 'Business', '2022-06-21', 6215.46, 'Ahmed Al-Kuwari', 'Fair', 12432.07, 'Small (1-10)', 'Building 41, Zone 9', 'Doha', '+974-9561-8177', 'cloud.software.development@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000042', 'Data Analytics Corporation', 'Retail', 'Platinum', 'Enterprise', '2024-09-17', 8394.52, 'Hassan Al-Marri', 'Needs Attention', 46177.58, 'Small (1-10)', 'Building 42, Zone 100', 'Doha', '+974-3115-1085', 'data.analytics.corporation@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000043', 'Cyber Security Experts', 'Healthcare', 'Gold', 'Premium', '2022-04-06', 12181.92, 'Emma Williams', 'Excellent', 49257.61, 'Medium (11-50)', 'Building 43, Zone 44', 'Doha', '+974-3747-8481', 'cyber.security.experts@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000044', 'Telecommunications Equipment', 'Logistics', 'Platinum', 'Business', '2024-03-13', 4011.92, 'Jennifer Davis', 'Needs Attention', 15706.77, 'Medium (11-50)', 'Building 44, Zone 37', 'Doha', '+974-3911-7274', 'telecommunications.equipment@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000045', 'Energy Management Systems', 'Government', 'Silver', 'Business', '2019-07-06', 1777.92, 'Khalid Al-Ansari', 'Fair', 6364.57, 'Small (1-10)', 'Building 45, Zone 24', 'Doha', '+974-9366-9680', 'energy.management.systems@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000046', 'Water Treatment Plant', 'Manufacturing', 'Gold', 'Premium', '2022-09-06', 1892.08, 'Khalid Al-Ansari', 'Needs Attention', 7469.0, 'Small (1-10)', 'Building 46, Zone 85', 'Doha', '+974-6192-6295', 'water.treatment.plant@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000047', 'Waste Management Services', 'Government', 'Platinum', 'Premium', '2018-12-27', 13694.31, 'Ahmed Al-Kuwari', 'Needs Attention', 68168.81, 'Small (1-10)', 'Building 47, Zone 48', 'Doha', '+974-5961-4890', 'waste.management.services@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000048', 'Public Relations Agency', 'Manufacturing', 'Gold', 'Premium', '2021-03-01', 14331.93, 'Ahmed Al-Kuwari', 'Fair', 66228.88, 'Small (1-10)', 'Building 48, Zone 97', 'Doha', '+974-3745-3210', 'public.relations.agency@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000049', 'Event Management Co', 'Government', 'Gold', 'Enterprise', '2019-03-16', 1778.38, 'Ahmed Al-Kuwari', 'Excellent', 8792.16, 'Large (51-200)', 'Building 49, Zone 83', 'Doha', '+974-3006-4487', 'event.management.co@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000050', 'Travel Tourism Qatar', 'Hospitality', 'Bronze', 'Business', '2018-01-10', 6539.05, 'Mohammed Al-Thani', 'Needs Attention', 29359.1, 'Small (1-10)', 'Building 50, Zone 50', 'Doha', '+974-7274-8050', 'travel.tourism.qatar@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000051', 'Insurance Brokerage Firm', 'Government', 'Gold', 'Standard', '2019-03-29', 4452.38, 'Khalid Al-Ansari', 'Needs Attention', 22629.23, 'Medium (11-50)', 'Building 51, Zone 60', 'Doha', '+974-8569-4864', 'insurance.brokerage.firm@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000052', 'Investment Advisory Group', 'Construction', 'Silver', 'Business', '2024-07-28', 13263.25, 'Ahmed Al-Kuwari', 'Good', 49458.01, 'Large (51-200)', 'Building 52, Zone 75', 'Doha', '+974-4719-4371', 'investment.advisory.group@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000053', 'Property Management Services', 'Technology', 'Gold', 'Standard', '2018-08-06', 1152.5, 'Khalid Al-Ansari', 'Fair', 2425.47, 'Medium (11-50)', 'Building 53, Zone 51', 'Doha', '+974-8478-1990', 'property.management.services@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000054', 'Retail Distribution Network', 'Education', 'Platinum', 'Standard', '2024-06-27', 1110.2, 'Hassan Al-Marri', 'Good', 5970.33, 'Medium (11-50)', 'Building 54, Zone 14', 'Doha', '+974-9601-6424', 'retail.distribution.network@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000055', 'Manufacturing Solutions', 'Manufacturing', 'Silver', 'Enterprise', '2023-09-19', 12542.63, 'Lisa Anderson', 'Good', 36427.39, 'Large (51-200)', 'Building 55, Zone 79', 'Doha', '+974-6525-7016', 'manufacturing.solutions@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000056', 'Agricultural Technology', 'Technology', 'Silver', 'Standard', '2023-02-21', 1266.23, 'Lisa Anderson', 'Good', 6031.41, 'Medium (11-50)', 'Building 56, Zone 50', 'Doha', '+974-6359-2600', 'agricultural.technology@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000057', 'Pharmaceutical Distributors', 'Education', 'Platinum', 'Standard', '2022-05-05', 8120.54, 'Emma Williams', 'Good', 44501.47, 'Large (51-200)', 'Building 57, Zone 98', 'Doha', '+974-7784-4469', 'pharmaceutical.distributors@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000058', 'Laboratory Services Qatar', 'Technology', 'Bronze', 'Business', '2024-01-30', 11128.24, 'Hassan Al-Marri', 'Needs Attention', 37084.49, 'Small (1-10)', 'Building 58, Zone 87', 'Doha', '+974-8104-5809', 'laboratory.services.qatar@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000059', 'Veterinary Care Center', 'Education', 'Bronze', 'Premium', '2020-03-26', 10752.43, 'Emma Williams', 'Needs Attention', 57436.79, 'Medium (11-50)', 'Building 59, Zone 14', 'Doha', '+974-4096-7472', 'veterinary.care.center@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000060', 'Pet Supplies Store', 'Manufacturing', 'Bronze', 'Premium', '2020-10-21', 10282.94, 'Mohammed Al-Thani', 'Excellent', 28834.95, 'Medium (11-50)', 'Building 60, Zone 83', 'Doha', '+974-9557-9109', 'pet.supplies.store@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000061', 'Sports Equipment Trading', 'Construction', 'Platinum', 'Standard', '2018-11-07', 7469.11, 'Khalid Al-Ansari', 'Fair', 36455.89, 'Small (1-10)', 'Building 61, Zone 44', 'Doha', '+974-7024-4894', 'sports.equipment.trading@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000062', 'Beauty Salon Chain', 'Government', 'Gold', 'Premium', '2019-06-13', 10668.54, 'Jennifer Davis', 'Needs Attention', 30878.14, 'Large (51-200)', 'Building 62, Zone 55', 'Doha', '+974-9793-1719', 'beauty.salon.chain@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000063', 'Dental Clinic Group', 'Construction', 'Platinum', 'Premium', '2024-10-22', 9695.45, 'Jennifer Davis', 'Good', 24762.11, 'Large (51-200)', 'Building 63, Zone 75', 'Doha', '+974-6836-6284', 'dental.clinic.group@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000064', 'Optical Services Network', 'Logistics', 'Bronze', 'Business', '2020-05-19', 6422.58, 'Lisa Anderson', 'Fair', 37334.7, 'Medium (11-50)', 'Building 64, Zone 85', 'Doha', '+974-3124-9905', 'optical.services.network@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000065', 'Printing Publishing House', 'Healthcare', 'Gold', 'Standard', '2020-05-25', 9141.29, 'Lisa Anderson', 'Fair', 33149.04, 'Large (51-200)', 'Building 65, Zone 14', 'Doha', '+974-9199-5758', 'printing.publishing.house@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000066', 'Packaging Solutions Ltd', 'Education', 'Platinum', 'Enterprise', '2020-03-17', 14381.62, 'Mohammed Al-Thani', 'Excellent', 74596.14, 'Large (51-200)', 'Building 66, Zone 33', 'Doha', '+974-3011-6065', 'packaging.solutions.ltd@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000067', 'Chemical Industries Qatar', 'Technology', 'Gold', 'Enterprise', '2019-09-16', 6070.64, 'Jennifer Davis', 'Fair', 13682.2, 'Small (1-10)', 'Building 67, Zone 46', 'Doha', '+974-8521-1927', 'chemical.industries.qatar@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000068', 'Textile Manufacturing', 'Logistics', 'Bronze', 'Business', '2021-09-23', 8341.45, 'Mohammed Al-Thani', 'Needs Attention', 38058.36, 'Large (51-200)', 'Building 68, Zone 57', 'Doha', '+974-9378-6599', 'textile.manufacturing@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000069', 'Furniture Design Studio', 'Retail', 'Platinum', 'Standard', '2022-08-26', 9392.39, 'Hassan Al-Marri', 'Needs Attention', 25691.91, 'Large (51-200)', 'Building 69, Zone 66', 'Doha', '+974-6180-1851', 'furniture.design.studio@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000070', 'Interior Decoration Services', 'Logistics', 'Gold', 'Enterprise', '2021-05-26', 2429.98, 'Jennifer Davis', 'Needs Attention', 11803.51, 'Medium (11-50)', 'Building 70, Zone 91', 'Doha', '+974-5820-4381', 'interior.decoration.services@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000071', 'Landscape Gardening Co', 'Logistics', 'Platinum', 'Enterprise', '2021-11-14', 10554.1, 'Sarah Johnson', 'Good', 57660.06, 'Medium (11-50)', 'Building 71, Zone 56', 'Doha', '+974-7429-4356', 'landscape.gardening.co@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000072', 'Cleaning Services Group', 'Technology', 'Bronze', 'Standard', '2018-06-28', 4184.01, 'Lisa Anderson', 'Excellent', 13775.0, 'Small (1-10)', 'Building 72, Zone 41', 'Doha', '+974-5845-5656', 'cleaning.services.group@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000073', 'Security Systems Provider', 'Education', 'Platinum', 'Enterprise', '2019-04-21', 2882.51, 'Ahmed Al-Kuwari', 'Good', 16586.6, 'Small (1-10)', 'Building 73, Zone 77', 'Doha', '+974-3709-1463', 'security.systems.provider@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000074', 'Fire Safety Equipment', 'Technology', 'Silver', 'Standard', '2024-06-09', 13623.61, 'Hassan Al-Marri', 'Good', 47456.71, 'Medium (11-50)', 'Building 74, Zone 41', 'Doha', '+974-8235-9592', 'fire.safety.equipment@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000075', 'Electrical Contracting', 'Technology', 'Platinum', 'Business', '2022-11-22', 5703.82, 'Ahmed Al-Kuwari', 'Needs Attention', 14725.5, 'Large (51-200)', 'Building 75, Zone 63', 'Doha', '+974-3198-1484', 'electrical.contracting@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000076', 'Plumbing Services Network', 'Technology', 'Bronze', 'Enterprise', '2019-01-05', 14752.73, 'Mohammed Al-Thani', 'Excellent', 37367.29, 'Large (51-200)', 'Building 76, Zone 20', 'Doha', '+974-7830-8402', 'plumbing.services.network@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000077', 'HVAC Solutions Qatar', 'Logistics', 'Gold', 'Standard', '2019-11-05', 3632.81, 'Ahmed Al-Kuwari', 'Fair', 7836.5, 'Small (1-10)', 'Building 77, Zone 38', 'Doha', '+974-8276-3927', 'hvac.solutions.qatar@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000078', 'Elevator Maintenance Co', 'Logistics', 'Platinum', 'Standard', '2021-04-26', 2494.67, 'Jennifer Davis', 'Needs Attention', 6741.95, 'Medium (11-50)', 'Building 78, Zone 39', 'Doha', '+974-5188-6654', 'elevator.maintenance.co@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000079', 'Glass Aluminum Works', 'Manufacturing', 'Platinum', 'Enterprise', '2024-08-22', 5180.6, 'Sarah Johnson', 'Excellent', 21168.8, 'Small (1-10)', 'Building 79, Zone 50', 'Doha', '+974-6946-1609', 'glass.aluminum.works@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000080', 'Carpentry Workshop', 'Retail', 'Bronze', 'Standard', '2024-03-05', 11284.22, 'Hassan Al-Marri', 'Excellent', 41996.61, 'Small (1-10)', 'Building 80, Zone 39', 'Doha', '+974-5011-4523', 'carpentry.workshop@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000081', 'Painting Contracting', 'Construction', 'Silver', 'Enterprise', '2018-11-30', 3923.66, 'Sarah Johnson', 'Needs Attention', 15038.13, 'Small (1-10)', 'Building 81, Zone 52', 'Doha', '+974-3652-9981', 'painting.contracting@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000082', 'Flooring Specialists', 'Logistics', 'Silver', 'Business', '2023-09-10', 5333.31, 'Khalid Al-Ansari', 'Needs Attention', 17089.44, 'Medium (11-50)', 'Building 82, Zone 37', 'Doha', '+974-5908-7805', 'flooring.specialists@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000083', 'Roofing Solutions Ltd', 'Construction', 'Silver', 'Premium', '2018-12-01', 11056.26, 'Hassan Al-Marri', 'Fair', 45361.14, 'Small (1-10)', 'Building 83, Zone 61', 'Doha', '+974-5084-7783', 'roofing.solutions.ltd@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000084', 'Steel Fabrication Works', 'Technology', 'Platinum', 'Business', '2024-04-06', 14010.06, 'Jennifer Davis', 'Fair', 45642.01, 'Large (51-200)', 'Building 84, Zone 70', 'Doha', '+974-4499-7294', 'steel.fabrication.works@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000085', 'Welding Services Qatar', 'Government', 'Platinum', 'Enterprise', '2023-10-01', 1440.76, 'Emma Williams', 'Excellent', 5256.33, 'Small (1-10)', 'Building 85, Zone 56', 'Doha', '+974-7666-6993', 'welding.services.qatar@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000086', 'Auto Repair Workshop', 'Hospitality', 'Silver', 'Enterprise', '2021-08-22', 4752.33, 'Khalid Al-Ansari', 'Good', 14473.52, 'Small (1-10)', 'Building 86, Zone 3', 'Doha', '+974-9506-4663', 'auto.repair.workshop@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000087', 'Spare Parts Trading', 'Logistics', 'Gold', 'Business', '2020-09-10', 936.56, 'Hassan Al-Marri', 'Good', 3005.14, 'Large (51-200)', 'Building 87, Zone 79', 'Doha', '+974-8139-6599', 'spare.parts.trading@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000088', 'Tyre Services Center', 'Hospitality', 'Bronze', 'Standard', '2021-06-16', 2642.35, 'Ahmed Al-Kuwari', 'Fair', 11260.37, 'Large (51-200)', 'Building 88, Zone 32', 'Doha', '+974-9279-9063', 'tyre.services.center@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000089', 'Car Wash Network', 'Healthcare', 'Bronze', 'Premium', '2022-12-17', 5666.57, 'Jennifer Davis', 'Excellent', 30271.62, 'Large (51-200)', 'Building 89, Zone 38', 'Doha', '+974-9405-4874', 'car.wash.network@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000090', 'Vehicle Tracking Systems', 'Logistics', 'Silver', 'Enterprise', '2023-02-06', 5425.0, 'Sarah Johnson', 'Good', 15029.72, 'Large (51-200)', 'Building 90, Zone 66', 'Doha', '+974-4635-3260', 'vehicle.tracking.systems@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000091', 'Fleet Management Solutions', 'Healthcare', 'Gold', 'Enterprise', '2018-02-19', 12513.45, 'Mohammed Al-Thani', 'Fair', 59377.45, 'Small (1-10)', 'Building 91, Zone 15', 'Doha', '+974-6129-2299', 'fleet.management.solutions@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000092', 'Cargo Handling Services', 'Logistics', 'Platinum', 'Standard', '2021-08-15', 6319.91, 'Hassan Al-Marri', 'Needs Attention', 19303.49, 'Medium (11-50)', 'Building 92, Zone 66', 'Doha', '+974-8960-3152', 'cargo.handling.services@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000093', 'Warehouse Operations', 'Manufacturing', 'Platinum', 'Business', '2020-08-15', 1852.72, 'Hassan Al-Marri', 'Good', 7759.71, 'Large (51-200)', 'Building 93, Zone 59', 'Doha', '+974-6439-7646', 'warehouse.operations@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000094', 'Cold Storage Facilities', 'Finance', 'Platinum', 'Premium', '2022-04-23', 4934.47, 'Jennifer Davis', 'Fair', 20320.37, 'Medium (11-50)', 'Building 94, Zone 9', 'Doha', '+974-9198-6911', 'cold.storage.facilities@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000095', 'Food Processing Plant', 'Government', 'Bronze', 'Business', '2023-08-30', 2880.04, 'Mohammed Al-Thani', 'Fair', 10637.74, 'Large (51-200)', 'Building 95, Zone 38', 'Doha', '+974-9481-4237', 'food.processing.plant@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000096', 'Bakery Products Qatar', 'Retail', 'Gold', 'Business', '2019-11-26', 11613.04, 'Jennifer Davis', 'Excellent', 31949.26, 'Small (1-10)', 'Building 96, Zone 72', 'Doha', '+974-6434-5467', 'bakery.products.qatar@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000097', 'Beverage Distribution', 'Healthcare', 'Bronze', 'Standard', '2023-03-06', 7748.36, 'Emma Williams', 'Needs Attention', 38581.79, 'Medium (11-50)', 'Building 97, Zone 95', 'Doha', '+974-7558-2428', 'beverage.distribution@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000098', 'Grocery Chain Network', 'Retail', 'Gold', 'Standard', '2020-09-14', 5067.15, 'Lisa Anderson', 'Excellent', 12583.17, 'Small (1-10)', 'Building 98, Zone 40', 'Doha', '+974-3734-8987', 'grocery.chain.network@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000099', 'Supermarket Operations', 'Finance', 'Platinum', 'Premium', '2018-03-04', 2176.68, 'Mohammed Al-Thani', 'Good', 13032.2, 'Small (1-10)', 'Building 99, Zone 77', 'Doha', '+974-3734-2787', 'supermarket.operations@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000100', 'Convenience Store Group', 'Construction', 'Bronze', 'Standard', '2019-12-08', 12485.13, 'Khalid Al-Ansari', 'Excellent', 33421.56, 'Medium (11-50)', 'Building 100, Zone 83', 'Doha', '+974-8722-4292', 'convenience.store.group@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000101', 'Online Retail Platform', 'Finance', 'Platinum', 'Business', '2024-02-09', 13760.67, 'Emma Williams', 'Excellent', 74552.83, 'Large (51-200)', 'Building 101, Zone 40', 'Doha', '+974-9675-2052', 'online.retail.platform@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000102', 'E-commerce Solutions', 'Healthcare', 'Silver', 'Premium', '2023-08-10', 13268.03, 'Hassan Al-Marri', 'Excellent', 77505.47, 'Large (51-200)', 'Building 102, Zone 10', 'Doha', '+974-3054-7250', 'e-commerce.solutions@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000103', 'Mobile App Development', 'Logistics', 'Bronze', 'Standard', '2019-07-06', 4089.73, 'Emma Williams', 'Good', 19909.58, 'Medium (11-50)', 'Building 103, Zone 11', 'Doha', '+974-3771-9898', 'mobile.app.development@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000104', 'Web Hosting Services', 'Hospitality', 'Gold', 'Standard', '2023-11-08', 2805.31, 'Mohammed Al-Thani', 'Good', 8869.37, 'Medium (11-50)', 'Building 104, Zone 37', 'Doha', '+974-6490-5248', 'web.hosting.services@company.qa', 'Suspended');
INSERT INTO customers VALUES ('SME000105', 'Domain Registration', 'Hospitality', 'Gold', 'Enterprise', '2023-12-18', 3802.72, 'Sarah Johnson', 'Needs Attention', 13446.79, 'Medium (11-50)', 'Building 105, Zone 17', 'Doha', '+974-5404-1680', 'domain.registration@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000106', 'Digital Certification Authority', 'Construction', 'Silver', 'Premium', '2023-06-16', 9234.04, 'Ahmed Al-Kuwari', 'Excellent', 26792.16, 'Medium (11-50)', 'Building 106, Zone 40', 'Doha', '+974-4808-2384', 'digital.certification.authority@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000107', 'TechVision Solutions', 'Education', 'Gold', 'Business', '2023-11-27', 12689.36, 'Emma Williams', 'Good', 57325.23, 'Small (1-10)', 'Building 107, Zone 18', 'Doha', '+974-7908-6066', 'techvision.solutions@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000108', 'Green Energy Qatar', 'Government', 'Platinum', 'Premium', '2023-05-18', 5555.27, 'Lisa Anderson', 'Excellent', 17150.83, 'Large (51-200)', 'Building 108, Zone 96', 'Doha', '+974-4052-1724', 'green.energy.qatar@company.qa', 'Pending');
INSERT INTO customers VALUES ('SME000109', 'Gulf Trading Co', 'Healthcare', 'Platinum', 'Standard', '2023-09-03', 2043.51, 'Ahmed Al-Kuwari', 'Excellent', 5084.67, 'Large (51-200)', 'Building 109, Zone 96', 'Doha', '+974-8746-4020', 'gulf.trading.co@company.qa', 'Active');
INSERT INTO customers VALUES ('SME000110', 'Smart Logistics LLC', 'Retail', 'Bronze', 'Business', '2019-12-17', 11472.74, 'Ahmed Al-Kuwari', 'Needs Attention', 42455.51, 'Large (51-200)', 'Building 110, Zone 71', 'Doha', '+974-9365-4893', 'smart.logistics.llc@company.qa', 'Suspended');

-- Service Subscriptions table
CREATE TABLE IF NOT EXISTS service_subscriptions (
    subscription_id TEXT(20) PRIMARY KEY,
    customer_id TEXT(20) NOT NULL,
    service_type TEXT(50) NOT NULL,
    service_name TEXT(100) NOT NULL,
    bandwidth_speed TEXT(20),
    monthly_fee REAL(10, 2) NOT NULL,
    activation_date TEXT NOT NULL,
    contract_term_months INT,
    auto_renewal BOOLEAN,
    status TEXT(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO service_subscriptions VALUES ('SUB000001', 'SME000001', 'Cloud', 'Virtual Server - Small', 'N/A', 150.0, '2023-07-20', 36, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000002', 'SME000002', 'Connectivity', 'Dedicated Leased Line 10Mbps', '10Mbps', 1200.0, '2019-12-21', 12, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000003', 'SME000003', 'Cloud', 'DDoS Protection - Standard', 'N/A', 200.0, '2022-01-01', 24, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000004', 'SME000004', 'IoT', 'IoT Connectivity Plan - Growth', 'N/A', 180.0, '2019-04-17', 36, True, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000005', 'SME000005', 'Connectivity', 'MPLS Network Solution - Standard', '50Mbps', 1800.0, '2022-01-26', 36, True, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000006', 'SME000006', 'Connectivity', 'Business Fiber Internet 100Mbps', '100Mbps', 299.0, '2021-03-16', 36, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000007', 'SME000007', 'IoT', 'Smart Meter Solution - Advanced', 'N/A', 300.0, '2023-12-30', 36, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000008', 'SME000008', 'Cloud', 'Managed Database - Medium', 'N/A', 250.0, '2021-02-08', 12, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000009', 'SME000009', 'Connectivity', 'SD-WAN Solution - Professional', '100Mbps', 1500.0, '2020-12-31', 36, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000010', 'SME000010', 'Cloud', 'Virtual Server - Large', 'N/A', 350.0, '2021-11-03', 24, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000011', 'SME000011', 'Connectivity', 'Dedicated Leased Line 10Mbps', '10Mbps', 1200.0, '2024-02-24', 12, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000012', 'SME000012', 'Cloud', 'Cloud Storage 1000GB', 'N/A', 80.0, '2022-03-08', 12, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000013', 'SME000013', 'Connectivity', 'Business Fiber Internet 1000Mbps', '1Gbps', 999.0, '2021-08-14', 36, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000014', 'SME000014', 'Connectivity', 'MPLS Network Solution - Standard', '50Mbps', 1800.0, '2020-01-07', 36, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000015', 'SME000015', 'Connectivity', 'MPLS Network Solution - Standard', '50Mbps', 1800.0, '2021-03-29', 24, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000016', 'SME000016', 'IoT', 'Smart Meter Solution - Advanced', 'N/A', 300.0, '2022-05-22', 24, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000017', 'SME000017', 'Cloud', 'DDoS Protection - Standard', 'N/A', 200.0, '2019-05-31', 12, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000018', 'SME000018', 'Connectivity', 'SD-WAN Solution - Professional', '100Mbps', 1500.0, '2023-05-02', 24, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000019', 'SME000019', 'Cloud', 'DDoS Protection - Standard', 'N/A', 200.0, '2020-11-01', 12, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000020', 'SME000020', 'Cloud', 'Virtual Server - Large', 'N/A', 350.0, '2023-09-17', 36, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000021', 'SME000021', 'Cloud', 'DDoS Protection - Standard', 'N/A', 200.0, '2020-01-26', 12, True, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000022', 'SME000022', 'IoT', 'Fleet Tracking System - Large', 'N/A', 400.0, '2024-03-20', 12, True, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000023', 'SME000023', 'Connectivity', 'Business Fiber Internet 100Mbps', '100Mbps', 299.0, '2023-09-18', 36, True, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000024', 'SME000024', 'Cloud', 'Virtual Server - Small', 'N/A', 150.0, '2019-10-15', 36, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000025', 'SME000025', 'Cloud', 'DDoS Protection - Standard', 'N/A', 200.0, '2022-04-15', 12, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000026', 'SME000026', 'Connectivity', 'Business Fiber Internet 500Mbps', '500Mbps', 599.0, '2023-10-17', 36, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000027', 'SME000027', 'IoT', 'Asset Monitoring Solution - Professional', 'N/A', 250.0, '2022-07-29', 36, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000028', 'SME000028', 'IoT', 'Asset Monitoring Solution - Professional', 'N/A', 250.0, '2023-07-29', 24, True, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000029', 'SME000029', 'Connectivity', 'Dedicated Leased Line 10Mbps', '10Mbps', 1200.0, '2022-02-13', 24, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000030', 'SME000030', 'Connectivity', 'MPLS Network Solution - Standard', '50Mbps', 1800.0, '2021-12-14', 36, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000031', 'SME000031', 'Connectivity', 'Business Fiber Internet 1000Mbps', '1Gbps', 999.0, '2021-02-11', 12, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000032', 'SME000032', 'IoT', 'IoT Connectivity Plan - Growth', 'N/A', 180.0, '2021-08-05', 36, True, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000033', 'SME000033', 'IoT', 'Smart Meter Solution - Advanced', 'N/A', 300.0, '2020-06-16', 24, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000034', 'SME000034', 'IoT', 'Asset Monitoring Solution - Professional', 'N/A', 250.0, '2020-11-05', 12, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000035', 'SME000035', 'Connectivity', 'MPLS Network Solution - Standard', '50Mbps', 1800.0, '2021-09-16', 24, True, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000036', 'SME000036', 'Cloud', 'Virtual Server - Large', 'N/A', 350.0, '2020-09-29', 24, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000037', 'SME000037', 'Cloud', 'Cloud Storage 1000GB', 'N/A', 80.0, '2020-10-19', 12, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000038', 'SME000038', 'IoT', 'Smart Meter Solution - Advanced', 'N/A', 300.0, '2024-06-04', 36, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000039', 'SME000039', 'Connectivity', 'Business Fiber Internet 100Mbps', '100Mbps', 299.0, '2021-09-20', 24, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000040', 'SME000040', 'Connectivity', 'Business Fiber Internet 1000Mbps', '1Gbps', 999.0, '2021-09-21', 24, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000041', 'SME000041', 'Cloud', 'Virtual Server - Small', 'N/A', 150.0, '2021-11-07', 12, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000042', 'SME000042', 'Connectivity', 'Business Fiber Internet 100Mbps', '100Mbps', 299.0, '2021-06-18', 24, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000043', 'SME000043', 'Cloud', 'Virtual Server - Small', 'N/A', 150.0, '2021-06-25', 36, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000044', 'SME000044', 'Cloud', 'Virtual Server - Small', 'N/A', 150.0, '2022-12-28', 36, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000045', 'SME000045', 'Cloud', 'Cloud Backup Service - Basic', 'N/A', 120.0, '2019-04-21', 36, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000046', 'SME000046', 'Cloud', 'Cloud Storage 1000GB', 'N/A', 80.0, '2023-10-25', 24, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000047', 'SME000047', 'IoT', 'Fleet Tracking System - Large', 'N/A', 400.0, '2023-01-14', 12, True, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000048', 'SME000048', 'IoT', 'Fleet Tracking System - Large', 'N/A', 400.0, '2023-12-30', 36, True, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000049', 'SME000049', 'Cloud', 'Cloud Storage 1000GB', 'N/A', 80.0, '2019-04-07', 24, True, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000050', 'SME000050', 'Cloud', 'DDoS Protection - Standard', 'N/A', 200.0, '2024-07-04', 24, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000051', 'SME000051', 'IoT', 'Asset Monitoring Solution - Professional', 'N/A', 250.0, '2023-04-06', 12, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000052', 'SME000052', 'IoT', 'IoT Connectivity Plan - Growth', 'N/A', 180.0, '2019-11-28', 36, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000053', 'SME000053', 'Connectivity', 'Business Fiber Internet 100Mbps', '100Mbps', 299.0, '2023-11-03', 12, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000054', 'SME000054', 'Connectivity', 'Business Fiber Internet 500Mbps', '500Mbps', 599.0, '2023-07-24', 36, True, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000055', 'SME000055', 'Connectivity', 'Business Fiber Internet 1000Mbps', '1Gbps', 999.0, '2021-03-23', 36, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000056', 'SME000056', 'Connectivity', 'Business Fiber Internet 1000Mbps', '1Gbps', 999.0, '2022-01-09', 24, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000057', 'SME000057', 'Connectivity', 'Business Fiber Internet 100Mbps', '100Mbps', 299.0, '2024-08-30', 36, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000058', 'SME000058', 'Connectivity', 'Business Fiber Internet 500Mbps', '500Mbps', 599.0, '2019-01-18', 36, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000059', 'SME000059', 'Cloud', 'DDoS Protection - Standard', 'N/A', 200.0, '2021-08-03', 12, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000060', 'SME000060', 'Cloud', 'Virtual Server - Small', 'N/A', 150.0, '2019-05-21', 24, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000061', 'SME000061', 'Connectivity', 'Business Fiber Internet 1000Mbps', '1Gbps', 999.0, '2020-03-11', 12, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000062', 'SME000062', 'Cloud', 'DDoS Protection - Standard', 'N/A', 200.0, '2024-07-22', 12, True, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000063', 'SME000063', 'Cloud', 'Virtual Server - Small', 'N/A', 150.0, '2019-11-30', 24, True, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000064', 'SME000064', 'Cloud', 'DDoS Protection - Standard', 'N/A', 200.0, '2022-01-06', 12, True, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000065', 'SME000065', 'Cloud', 'Virtual Server - Small', 'N/A', 150.0, '2023-06-24', 36, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000066', 'SME000066', 'Cloud', 'Virtual Server - Large', 'N/A', 350.0, '2022-03-14', 36, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000067', 'SME000067', 'Connectivity', 'Business Fiber Internet 100Mbps', '100Mbps', 299.0, '2024-08-21', 12, True, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000068', 'SME000068', 'Connectivity', 'Dedicated Leased Line 10Mbps', '10Mbps', 1200.0, '2021-01-12', 24, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000069', 'SME000069', 'Cloud', 'Virtual Server - Small', 'N/A', 150.0, '2022-11-15', 12, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000070', 'SME000070', 'Connectivity', 'Business Fiber Internet 100Mbps', '100Mbps', 299.0, '2024-06-27', 36, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000071', 'SME000071', 'Connectivity', 'Dedicated Leased Line 10Mbps', '10Mbps', 1200.0, '2024-01-01', 12, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000072', 'SME000072', 'Connectivity', 'Business Fiber Internet 100Mbps', '100Mbps', 299.0, '2021-02-03', 12, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000073', 'SME000073', 'Connectivity', 'Business Fiber Internet 500Mbps', '500Mbps', 599.0, '2022-07-14', 36, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000074', 'SME000074', 'Connectivity', 'MPLS Network Solution - Standard', '50Mbps', 1800.0, '2020-11-15', 24, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000075', 'SME000075', 'Cloud', 'DDoS Protection - Standard', 'N/A', 200.0, '2021-08-19', 36, True, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000076', 'SME000076', 'IoT', 'IoT Connectivity Plan - Growth', 'N/A', 180.0, '2022-03-10', 12, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000077', 'SME000077', 'IoT', 'IoT Connectivity Plan - Growth', 'N/A', 180.0, '2023-10-26', 12, True, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000078', 'SME000078', 'Cloud', 'DDoS Protection - Standard', 'N/A', 200.0, '2024-05-27', 36, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000079', 'SME000079', 'Connectivity', 'Business Fiber Internet 1000Mbps', '1Gbps', 999.0, '2024-04-13', 12, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000080', 'SME000080', 'IoT', 'Asset Monitoring Solution - Professional', 'N/A', 250.0, '2024-12-12', 24, True, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000081', 'SME000081', 'IoT', 'Asset Monitoring Solution - Professional', 'N/A', 250.0, '2019-09-17', 24, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000082', 'SME000082', 'Cloud', 'Managed Database - Medium', 'N/A', 250.0, '2020-09-12', 24, True, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000083', 'SME000083', 'Connectivity', 'SD-WAN Solution - Professional', '100Mbps', 1500.0, '2020-11-04', 36, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000084', 'SME000084', 'Cloud', 'Cloud Backup Service - Basic', 'N/A', 120.0, '2020-05-17', 36, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000085', 'SME000085', 'IoT', 'Fleet Tracking System - Large', 'N/A', 400.0, '2020-07-26', 36, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000086', 'SME000086', 'Cloud', 'Cloud Backup Service - Basic', 'N/A', 120.0, '2024-09-05', 24, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000087', 'SME000087', 'Cloud', 'Virtual Server - Large', 'N/A', 350.0, '2022-08-29', 24, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000088', 'SME000088', 'IoT', 'Fleet Tracking System - Large', 'N/A', 400.0, '2021-05-30', 12, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000089', 'SME000089', 'Cloud', 'Cloud Backup Service - Basic', 'N/A', 120.0, '2020-06-05', 36, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000090', 'SME000090', 'IoT', 'Asset Monitoring Solution - Professional', 'N/A', 250.0, '2021-04-20', 12, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000091', 'SME000091', 'IoT', 'Fleet Tracking System - Large', 'N/A', 400.0, '2021-05-21', 36, True, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000092', 'SME000092', 'Cloud', 'Virtual Server - Small', 'N/A', 150.0, '2019-01-30', 36, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000093', 'SME000093', 'Cloud', 'Virtual Server - Small', 'N/A', 150.0, '2024-09-22', 36, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000094', 'SME000094', 'Connectivity', 'MPLS Network Solution - Standard', '50Mbps', 1800.0, '2020-06-04', 12, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000095', 'SME000095', 'Cloud', 'Cloud Backup Service - Basic', 'N/A', 120.0, '2022-07-17', 24, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000096', 'SME000096', 'Connectivity', 'Business Fiber Internet 500Mbps', '500Mbps', 599.0, '2020-05-19', 12, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000097', 'SME000097', 'Cloud', 'Cloud Storage 1000GB', 'N/A', 80.0, '2024-11-04', 36, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000098', 'SME000098', 'Connectivity', 'SD-WAN Solution - Professional', '100Mbps', 1500.0, '2023-07-28', 12, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000099', 'SME000099', 'Cloud', 'Cloud Storage 1000GB', 'N/A', 80.0, '2023-01-30', 36, True, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000100', 'SME000100', 'IoT', 'Fleet Tracking System - Large', 'N/A', 400.0, '2023-02-09', 12, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000101', 'SME000101', 'IoT', 'IoT Connectivity Plan - Growth', 'N/A', 180.0, '2020-03-29', 12, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000102', 'SME000102', 'IoT', 'IoT Connectivity Plan - Growth', 'N/A', 180.0, '2024-09-06', 24, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000103', 'SME000103', 'Cloud', 'DDoS Protection - Standard', 'N/A', 200.0, '2024-01-01', 36, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000104', 'SME000104', 'Connectivity', 'Business Fiber Internet 100Mbps', '100Mbps', 299.0, '2020-05-18', 24, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000105', 'SME000105', 'IoT', 'Smart Meter Solution - Advanced', 'N/A', 300.0, '2022-05-04', 12, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000106', 'SME000106', 'Connectivity', 'Business Fiber Internet 1000Mbps', '1Gbps', 999.0, '2022-11-20', 12, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000107', 'SME000107', 'Connectivity', 'Business Fiber Internet 100Mbps', '100Mbps', 299.0, '2020-05-19', 24, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000108', 'SME000108', 'Cloud', 'Cloud Backup Service - Basic', 'N/A', 120.0, '2024-12-30', 12, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000109', 'SME000109', 'Cloud', 'Virtual Server - Small', 'N/A', 150.0, '2019-11-14', 36, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000110', 'SME000110', 'Cloud', 'Managed Database - Medium', 'N/A', 250.0, '2024-07-24', 24, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000111', 'SME000001', 'Cloud', 'Managed Database - Medium', 'N/A', 250.0, '2023-06-06', 12, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000112', 'SME000002', 'Connectivity', 'Dedicated Leased Line 10Mbps', '10Mbps', 1200.0, '2019-09-12', 12, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000113', 'SME000003', 'Connectivity', 'Business Fiber Internet 100Mbps', '100Mbps', 299.0, '2023-02-15', 36, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000114', 'SME000004', 'Connectivity', 'SD-WAN Solution - Professional', '100Mbps', 1500.0, '2024-11-09', 36, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000115', 'SME000005', 'Connectivity', 'Business Fiber Internet 500Mbps', '500Mbps', 599.0, '2024-10-18', 36, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000116', 'SME000006', 'IoT', 'Smart Meter Solution - Advanced', 'N/A', 300.0, '2023-03-01', 12, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000117', 'SME000007', 'Cloud', 'Managed Database - Medium', 'N/A', 250.0, '2019-03-18', 36, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000118', 'SME000008', 'IoT', 'Asset Monitoring Solution - Professional', 'N/A', 250.0, '2021-03-13', 36, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000119', 'SME000009', 'Cloud', 'DDoS Protection - Standard', 'N/A', 200.0, '2021-03-09', 36, True, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000120', 'SME000010', 'Cloud', 'Cloud Storage 1000GB', 'N/A', 80.0, '2022-04-01', 24, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000121', 'SME000011', 'Cloud', 'Virtual Server - Small', 'N/A', 150.0, '2022-08-17', 24, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000122', 'SME000012', 'Connectivity', 'Dedicated Leased Line 10Mbps', '10Mbps', 1200.0, '2024-02-08', 36, True, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000123', 'SME000013', 'Cloud', 'Cloud Storage 1000GB', 'N/A', 80.0, '2022-06-13', 36, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000124', 'SME000014', 'Cloud', 'Managed Database - Medium', 'N/A', 250.0, '2023-04-18', 24, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000125', 'SME000015', 'Connectivity', 'Business Fiber Internet 500Mbps', '500Mbps', 599.0, '2019-05-05', 12, True, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000126', 'SME000016', 'IoT', 'Smart Meter Solution - Advanced', 'N/A', 300.0, '2023-01-24', 12, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000127', 'SME000017', 'Cloud', 'Cloud Backup Service - Basic', 'N/A', 120.0, '2021-08-14', 36, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000128', 'SME000018', 'Cloud', 'DDoS Protection - Standard', 'N/A', 200.0, '2022-03-21', 24, True, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000129', 'SME000019', 'Connectivity', 'Business Fiber Internet 1000Mbps', '1Gbps', 999.0, '2024-07-12', 24, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000130', 'SME000020', 'Cloud', 'Cloud Storage 1000GB', 'N/A', 80.0, '2020-01-30', 12, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000131', 'SME000021', 'IoT', 'Smart Meter Solution - Advanced', 'N/A', 300.0, '2022-04-09', 36, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000132', 'SME000022', 'IoT', 'Asset Monitoring Solution - Professional', 'N/A', 250.0, '2024-04-30', 24, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000133', 'SME000023', 'Cloud', 'Managed Database - Medium', 'N/A', 250.0, '2024-05-23', 24, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000134', 'SME000024', 'Cloud', 'Cloud Storage 1000GB', 'N/A', 80.0, '2022-12-03', 24, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000135', 'SME000025', 'Cloud', 'Cloud Storage 1000GB', 'N/A', 80.0, '2022-11-24', 36, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000136', 'SME000026', 'Cloud', 'Cloud Backup Service - Basic', 'N/A', 120.0, '2019-01-12', 24, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000137', 'SME000027', 'Cloud', 'DDoS Protection - Standard', 'N/A', 200.0, '2022-04-20', 36, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000138', 'SME000028', 'Connectivity', 'Business Fiber Internet 500Mbps', '500Mbps', 599.0, '2021-05-02', 24, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000139', 'SME000029', 'Connectivity', 'Business Fiber Internet 1000Mbps', '1Gbps', 999.0, '2024-11-12', 36, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000140', 'SME000030', 'Cloud', 'Virtual Server - Large', 'N/A', 350.0, '2023-04-06', 12, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000141', 'SME000031', 'IoT', 'Smart Meter Solution - Advanced', 'N/A', 300.0, '2024-10-10', 12, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000142', 'SME000032', 'Connectivity', 'Business Fiber Internet 500Mbps', '500Mbps', 599.0, '2021-11-16', 12, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000143', 'SME000033', 'Cloud', 'Cloud Storage 1000GB', 'N/A', 80.0, '2021-11-09', 12, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000144', 'SME000034', 'Connectivity', 'SD-WAN Solution - Professional', '100Mbps', 1500.0, '2024-01-19', 12, False, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000145', 'SME000035', 'Cloud', 'Managed Database - Medium', 'N/A', 250.0, '2019-05-02', 24, False, 'Suspended');
INSERT INTO service_subscriptions VALUES ('SUB000146', 'SME000036', 'Connectivity', 'Business Fiber Internet 1000Mbps', '1Gbps', 999.0, '2021-11-09', 36, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000147', 'SME000037', 'Connectivity', 'Dedicated Leased Line 10Mbps', '10Mbps', 1200.0, '2022-07-11', 12, False, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000148', 'SME000038', 'Connectivity', 'MPLS Network Solution - Standard', '50Mbps', 1800.0, '2019-02-24', 24, True, 'Active');
INSERT INTO service_subscriptions VALUES ('SUB000149', 'SME000039', 'Connectivity', 'MPLS Network Solution - Standard', '50Mbps', 1800.0, '2020-02-25', 36, True, 'Expired');
INSERT INTO service_subscriptions VALUES ('SUB000150', 'SME000040', 'IoT', 'IoT Connectivity Plan - Growth', 'N/A', 180.0, '2024-11-13', 36, False, 'Active');

-- Contracts table
CREATE TABLE IF NOT EXISTS contracts (
    contract_id TEXT(20) PRIMARY KEY,
    customer_id TEXT(20) NOT NULL,
    contract_type TEXT(50) NOT NULL,
    start_date TEXT NOT NULL,
    end_date TEXT NOT NULL,
    total_value REAL(12, 2) NOT NULL,
    billing_cycle TEXT(20),
    payment_terms TEXT(50),
    sla_uptime_guarantee REAL(5, 2),
    penalty_clause TEXT,
    signed_by TEXT(100),
    status TEXT(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO contracts VALUES ('CNT000001', 'SME000001', 'Standard Service Agreement', '2022-04-25', '2023-04-25', 246879.91, 'Quarterly', 'Net 60', 99.5, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000002', 'SME000002', 'Custom Solution Contract', '2021-03-27', '2023-03-27', 445914.06, 'Monthly', 'Net 45', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000003', 'SME000003', 'Standard Service Agreement', '2020-02-11', '2023-02-10', 347901.88, 'Annual', 'Net 45', 99.5, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000004', 'SME000004', 'Standard Service Agreement', '2024-11-11', '2027-11-11', 236062.51, 'Monthly', 'Net 45', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000005', 'SME000005', 'Custom Solution Contract', '2023-11-20', '2024-11-19', 369923.95, 'Monthly', 'Net 45', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000006', 'SME000006', 'Custom Solution Contract', '2021-03-28', '2024-03-27', 56127.53, 'Quarterly', 'Prepaid', 99.5, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000007', 'SME000007', 'Custom Solution Contract', '2020-06-24', '2023-06-24', 306257.98, 'Quarterly', 'Net 45', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000008', 'SME000008', 'Standard Service Agreement', '2021-10-09', '2022-10-09', 430672.85, 'Annual', 'Net 60', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000009', 'SME000009', 'Enterprise Agreement', '2021-05-15', '2023-05-15', 117559.68, 'Quarterly', 'Net 60', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000010', 'SME000010', 'Enterprise Agreement', '2023-06-27', '2024-06-26', 158478.42, 'Annual', 'Net 45', 99.5, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000011', 'SME000011', 'Custom Solution Contract', '2024-10-13', '2025-10-13', 467886.26, 'Annual', 'Prepaid', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000012', 'SME000012', 'Custom Solution Contract', '2024-12-24', '2025-12-24', 217504.37, 'Monthly', 'Net 30', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000013', 'SME000013', 'Custom Solution Contract', '2020-11-21', '2021-11-21', 256731.56, 'Quarterly', 'Net 45', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000014', 'SME000014', 'Custom Solution Contract', '2023-07-23', '2025-07-22', 56440.73, 'Annual', 'Net 45', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000015', 'SME000015', 'Custom Solution Contract', '2020-07-10', '2023-07-10', 338257.8, 'Quarterly', 'Net 60', 99.5, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000016', 'SME000016', 'Standard Service Agreement', '2023-04-01', '2025-03-31', 468183.73, 'Quarterly', 'Net 30', 99.5, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000017', 'SME000017', 'Standard Service Agreement', '2020-08-16', '2023-08-16', 384944.17, 'Monthly', 'Prepaid', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000018', 'SME000018', 'Standard Service Agreement', '2021-11-16', '2023-11-16', 154941.3, 'Quarterly', 'Net 60', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000019', 'SME000019', 'Enterprise Agreement', '2021-04-04', '2024-04-03', 264709.0, 'Quarterly', 'Net 45', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000020', 'SME000020', 'Standard Service Agreement', '2021-03-06', '2024-03-05', 375611.5, 'Monthly', 'Net 30', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000021', 'SME000021', 'Standard Service Agreement', '2021-11-19', '2023-11-19', 270692.66, 'Annual', 'Prepaid', 99.5, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000022', 'SME000022', 'Custom Solution Contract', '2022-05-06', '2025-05-05', 288314.85, 'Annual', 'Prepaid', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000023', 'SME000023', 'Enterprise Agreement', '2021-09-19', '2023-09-19', 76008.93, 'Annual', 'Prepaid', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000024', 'SME000024', 'Standard Service Agreement', '2021-11-10', '2024-11-09', 458227.5, 'Quarterly', 'Net 60', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000025', 'SME000025', 'Custom Solution Contract', '2020-10-20', '2022-10-20', 100803.68, 'Quarterly', 'Net 60', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000026', 'SME000026', 'Enterprise Agreement', '2023-07-28', '2025-07-27', 374373.91, 'Annual', 'Net 45', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000027', 'SME000027', 'Enterprise Agreement', '2023-12-16', '2026-12-15', 323145.73, 'Annual', 'Net 60', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000028', 'SME000028', 'Enterprise Agreement', '2024-09-26', '2026-09-26', 216614.22, 'Quarterly', 'Net 30', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000029', 'SME000029', 'Enterprise Agreement', '2020-11-23', '2021-11-23', 452080.3, 'Monthly', 'Prepaid', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000030', 'SME000030', 'Enterprise Agreement', '2023-01-25', '2024-01-25', 266465.01, 'Monthly', 'Net 60', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000031', 'SME000031', 'Custom Solution Contract', '2024-02-14', '2027-02-13', 180682.49, 'Monthly', 'Net 45', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000032', 'SME000032', 'Enterprise Agreement', '2022-10-11', '2023-10-11', 378569.76, 'Quarterly', 'Net 45', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000033', 'SME000033', 'Enterprise Agreement', '2024-10-05', '2027-10-05', 291656.91, 'Monthly', 'Prepaid', 99.5, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000034', 'SME000034', 'Custom Solution Contract', '2023-05-23', '2025-05-22', 464895.61, 'Annual', 'Prepaid', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000035', 'SME000035', 'Custom Solution Contract', '2020-06-10', '2023-06-10', 439683.09, 'Monthly', 'Net 30', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000036', 'SME000036', 'Enterprise Agreement', '2022-03-07', '2024-03-06', 349145.35, 'Quarterly', 'Prepaid', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000037', 'SME000037', 'Enterprise Agreement', '2024-12-04', '2026-12-04', 494649.0, 'Quarterly', 'Net 45', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000038', 'SME000038', 'Custom Solution Contract', '2024-01-20', '2026-01-19', 444146.8, 'Monthly', 'Net 45', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000039', 'SME000039', 'Enterprise Agreement', '2020-05-12', '2023-05-12', 479995.13, 'Monthly', 'Net 30', 99.5, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000040', 'SME000040', 'Custom Solution Contract', '2021-05-08', '2023-05-08', 279015.11, 'Quarterly', 'Net 30', 99.5, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000041', 'SME000041', 'Enterprise Agreement', '2021-12-14', '2022-12-14', 391916.81, 'Annual', 'Net 60', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000042', 'SME000042', 'Custom Solution Contract', '2020-06-01', '2021-06-01', 377799.32, 'Quarterly', 'Net 30', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000043', 'SME000043', 'Standard Service Agreement', '2024-02-26', '2025-02-25', 405846.14, 'Quarterly', 'Net 30', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000044', 'SME000044', 'Enterprise Agreement', '2021-07-21', '2022-07-21', 177345.71, 'Monthly', 'Prepaid', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000045', 'SME000045', 'Enterprise Agreement', '2020-06-22', '2023-06-22', 444490.58, 'Monthly', 'Net 30', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000046', 'SME000046', 'Standard Service Agreement', '2023-07-24', '2026-07-23', 337076.07, 'Annual', 'Net 45', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000047', 'SME000047', 'Enterprise Agreement', '2022-08-12', '2023-08-12', 461819.74, 'Quarterly', 'Net 30', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000048', 'SME000048', 'Enterprise Agreement', '2023-03-16', '2024-03-15', 364303.45, 'Quarterly', 'Prepaid', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000049', 'SME000049', 'Standard Service Agreement', '2024-10-11', '2027-10-11', 224510.16, 'Monthly', 'Net 45', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000050', 'SME000050', 'Standard Service Agreement', '2022-06-07', '2023-06-07', 329930.01, 'Annual', 'Prepaid', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000051', 'SME000051', 'Custom Solution Contract', '2024-02-11', '2027-02-10', 499572.88, 'Monthly', 'Net 45', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000052', 'SME000052', 'Custom Solution Contract', '2022-04-21', '2024-04-20', 28242.38, 'Quarterly', 'Net 60', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000053', 'SME000053', 'Enterprise Agreement', '2023-06-17', '2026-06-16', 441083.73, 'Annual', 'Net 45', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000054', 'SME000054', 'Custom Solution Contract', '2022-05-20', '2025-05-19', 247109.07, 'Monthly', 'Net 45', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000055', 'SME000055', 'Enterprise Agreement', '2022-08-07', '2024-08-06', 183238.51, 'Quarterly', 'Net 60', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000056', 'SME000056', 'Enterprise Agreement', '2022-11-23', '2023-11-23', 97134.29, 'Annual', 'Net 45', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000057', 'SME000057', 'Custom Solution Contract', '2021-03-13', '2024-03-12', 263506.24, 'Annual', 'Net 45', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000058', 'SME000058', 'Enterprise Agreement', '2023-11-06', '2024-11-05', 165931.41, 'Quarterly', 'Net 30', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000059', 'SME000059', 'Standard Service Agreement', '2021-12-22', '2023-12-22', 479158.59, 'Quarterly', 'Net 30', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000060', 'SME000060', 'Enterprise Agreement', '2022-08-26', '2023-08-26', 120641.73, 'Annual', 'Net 60', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000061', 'SME000061', 'Enterprise Agreement', '2024-09-08', '2025-09-08', 371443.98, 'Annual', 'Net 45', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000062', 'SME000062', 'Standard Service Agreement', '2021-05-29', '2023-05-29', 148985.34, 'Annual', 'Net 30', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000063', 'SME000063', 'Enterprise Agreement', '2024-12-23', '2027-12-23', 29707.73, 'Quarterly', 'Net 45', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000064', 'SME000064', 'Standard Service Agreement', '2023-11-29', '2024-11-28', 195674.66, 'Quarterly', 'Net 60', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000065', 'SME000065', 'Enterprise Agreement', '2022-03-02', '2023-03-02', 222414.57, 'Monthly', 'Net 30', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000066', 'SME000066', 'Standard Service Agreement', '2021-05-26', '2023-05-26', 46547.14, 'Quarterly', 'Net 45', 99.5, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000067', 'SME000067', 'Custom Solution Contract', '2020-07-30', '2023-07-30', 128060.22, 'Annual', 'Net 45', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000068', 'SME000068', 'Enterprise Agreement', '2024-07-24', '2026-07-24', 393675.83, 'Annual', 'Net 60', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000069', 'SME000069', 'Custom Solution Contract', '2023-11-19', '2024-11-18', 152418.06, 'Monthly', 'Net 60', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000070', 'SME000070', 'Custom Solution Contract', '2022-01-26', '2024-01-26', 96137.67, 'Monthly', 'Net 30', 99.5, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000071', 'SME000071', 'Enterprise Agreement', '2024-03-27', '2025-03-27', 232048.26, 'Monthly', 'Net 30', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000072', 'SME000072', 'Custom Solution Contract', '2021-01-21', '2022-01-21', 402984.92, 'Monthly', 'Prepaid', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000073', 'SME000073', 'Standard Service Agreement', '2022-03-24', '2023-03-24', 295539.35, 'Monthly', 'Net 30', 99.5, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000074', 'SME000074', 'Standard Service Agreement', '2022-03-07', '2023-03-07', 115860.77, 'Monthly', 'Prepaid', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000075', 'SME000075', 'Custom Solution Contract', '2023-11-28', '2026-11-27', 120004.27, 'Monthly', 'Net 60', 99.5, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000076', 'SME000076', 'Custom Solution Contract', '2021-06-08', '2022-06-08', 292494.26, 'Annual', 'Net 30', 99.5, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000077', 'SME000077', 'Custom Solution Contract', '2020-01-25', '2022-01-24', 367568.1, 'Quarterly', 'Net 30', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000078', 'SME000078', 'Standard Service Agreement', '2020-12-15', '2022-12-15', 292645.92, 'Monthly', 'Prepaid', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000079', 'SME000079', 'Custom Solution Contract', '2024-10-06', '2025-10-06', 28765.87, 'Quarterly', 'Net 30', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000080', 'SME000080', 'Custom Solution Contract', '2020-08-18', '2023-08-18', 188656.61, 'Annual', 'Net 60', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000081', 'SME000081', 'Custom Solution Contract', '2023-02-22', '2026-02-21', 337649.8, 'Quarterly', 'Net 45', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000082', 'SME000082', 'Enterprise Agreement', '2022-06-17', '2024-06-16', 358796.89, 'Monthly', 'Prepaid', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000083', 'SME000083', 'Enterprise Agreement', '2024-08-01', '2027-08-01', 394666.46, 'Quarterly', 'Prepaid', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000084', 'SME000084', 'Standard Service Agreement', '2022-12-16', '2024-12-15', 67440.15, 'Monthly', 'Net 60', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000085', 'SME000085', 'Standard Service Agreement', '2020-08-09', '2023-08-09', 292238.62, 'Monthly', 'Net 45', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000086', 'SME000086', 'Custom Solution Contract', '2024-02-23', '2025-02-22', 249984.83, 'Monthly', 'Net 30', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000087', 'SME000087', 'Standard Service Agreement', '2022-07-05', '2024-07-04', 212851.54, 'Monthly', 'Net 45', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000088', 'SME000088', 'Standard Service Agreement', '2020-06-21', '2022-06-21', 239576.96, 'Quarterly', 'Prepaid', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000089', 'SME000089', 'Standard Service Agreement', '2022-05-22', '2025-05-21', 94096.36, 'Monthly', 'Prepaid', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000090', 'SME000090', 'Enterprise Agreement', '2023-11-11', '2024-11-10', 12807.73, 'Quarterly', 'Prepaid', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000091', 'SME000091', 'Standard Service Agreement', '2023-11-02', '2026-11-01', 446664.66, 'Quarterly', 'Net 60', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000092', 'SME000092', 'Standard Service Agreement', '2024-11-15', '2025-11-15', 38946.5, 'Annual', 'Prepaid', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000093', 'SME000093', 'Custom Solution Contract', '2022-01-11', '2023-01-11', 156273.08, 'Annual', 'Net 45', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000094', 'SME000094', 'Custom Solution Contract', '2020-04-21', '2021-04-21', 419265.13, 'Quarterly', 'Net 60', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000095', 'SME000095', 'Enterprise Agreement', '2023-11-05', '2026-11-04', 184528.81, 'Monthly', 'Net 30', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000096', 'SME000096', 'Enterprise Agreement', '2024-09-13', '2026-09-13', 195046.1, 'Annual', 'Prepaid', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000097', 'SME000097', 'Enterprise Agreement', '2020-05-06', '2023-05-06', 451230.3, 'Monthly', 'Net 60', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000098', 'SME000098', 'Standard Service Agreement', '2024-12-13', '2027-12-13', 411124.0, 'Monthly', 'Prepaid', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000099', 'SME000099', 'Custom Solution Contract', '2023-06-28', '2026-06-27', 300942.41, 'Quarterly', 'Net 45', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000100', 'SME000100', 'Enterprise Agreement', '2024-03-30', '2026-03-30', 212201.66, 'Quarterly', 'Net 60', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000101', 'SME000101', 'Standard Service Agreement', '2021-05-16', '2023-05-16', 375754.29, 'Monthly', 'Net 60', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000102', 'SME000102', 'Standard Service Agreement', '2021-09-03', '2022-09-03', 478265.73, 'Monthly', 'Net 30', 99.5, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000103', 'SME000103', 'Custom Solution Contract', '2024-04-02', '2027-04-02', 229324.24, 'Annual', 'Net 30', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000104', 'SME000104', 'Enterprise Agreement', '2024-06-15', '2025-06-15', 107708.01, 'Annual', 'Net 30', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000105', 'SME000105', 'Custom Solution Contract', '2023-03-08', '2024-03-07', 414216.39, 'Monthly', 'Net 45', 99.5, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000106', 'SME000106', 'Custom Solution Contract', '2023-08-21', '2026-08-20', 190081.57, 'Quarterly', 'Net 60', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000107', 'SME000107', 'Custom Solution Contract', '2021-07-17', '2022-07-17', 78194.79, 'Monthly', 'Net 60', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');
INSERT INTO contracts VALUES ('CNT000108', 'SME000108', 'Standard Service Agreement', '2020-07-31', '2023-07-31', 299622.02, 'Monthly', 'Net 45', 99.99, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Active');
INSERT INTO contracts VALUES ('CNT000109', 'SME000109', 'Standard Service Agreement', '2024-02-02', '2027-02-01', 144571.22, 'Quarterly', 'Net 60', 99.95, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Renewed');
INSERT INTO contracts VALUES ('CNT000110', 'SME000110', 'Standard Service Agreement', '2024-11-03', '2027-11-03', 67370.05, 'Monthly', 'Net 30', 99.9, 'Service credits apply for downtime exceeding SLA', 'Contract Manager', 'Expired');

-- Contact Persons table
CREATE TABLE IF NOT EXISTS contact_persons (
    contact_id TEXT(20) PRIMARY KEY,
    customer_id TEXT(20) NOT NULL,
    full_name TEXT(100) NOT NULL,
    role TEXT(50) NOT NULL,
    email TEXT(100) NOT NULL,
    phone TEXT(20),
    mobile TEXT(20),
    is_primary_contact BOOLEAN,
    department TEXT(50),
    preferred_language TEXT(10),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO contact_persons VALUES ('CNT000001', 'SME000001', 'Maryam Johnson', 'Technical Lead', 'maryam.johnson@company.qa', '+974-4034-1822', '+974-6545-2154', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000002', 'SME000002', 'Khalid Smith', 'CEO', 'khalid.smith@company.qa', '+974-4442-9581', '+974-3318-6259', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000003', 'SME000003', 'Michael Johnson', 'IT Manager', 'michael.johnson@company.qa', '+974-4138-8844', '+974-4777-6905', True, 'Finance', 'ar');
INSERT INTO contact_persons VALUES ('CNT000004', 'SME000004', 'John Davis', 'CTO', 'john.davis@company.qa', '+974-4790-8655', '+974-3148-7148', True, 'Finance', 'ar');
INSERT INTO contact_persons VALUES ('CNT000005', 'SME000005', 'Michael Al-Kuwari', 'CTO', 'michael.al-kuwari@company.qa', '+974-4095-2066', '+974-6228-1356', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000006', 'SME000006', 'Emma Smith', 'CTO', 'emma.smith@company.qa', '+974-4709-1084', '+974-5525-3704', True, 'IT', 'ar');
INSERT INTO contact_persons VALUES ('CNT000007', 'SME000007', 'Noura Smith', 'CEO', 'noura.smith@company.qa', '+974-4293-2589', '+974-5080-5048', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000008', 'SME000008', 'John Al-Thani', 'Finance Director', 'john.al-thani@company.qa', '+974-4349-7495', '+974-4007-6367', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000009', 'SME000009', 'Noura Johnson', 'Technical Lead', 'noura.johnson@company.qa', '+974-4031-3544', '+974-3095-2532', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000010', 'SME000010', 'John Williams', 'CTO', 'john.williams@company.qa', '+974-4148-9119', '+974-3646-6225', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000011', 'SME000011', 'John Williams', 'Technical Lead', 'john.williams@company.qa', '+974-4983-3984', '+974-5036-5075', True, 'Finance', 'ar');
INSERT INTO contact_persons VALUES ('CNT000012', 'SME000012', 'Khalid Al-Marri', 'CEO', 'khalid.al-marri@company.qa', '+974-4215-7421', '+974-4812-6466', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000013', 'SME000013', 'John Al-Thani', 'Technical Lead', 'john.al-thani@company.qa', '+974-4488-2478', '+974-3676-4857', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000014', 'SME000014', 'Emma Al-Thani', 'Finance Director', 'emma.al-thani@company.qa', '+974-4672-7155', '+974-5655-8656', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000015', 'SME000015', 'John Williams', 'Operations Manager', 'john.williams@company.qa', '+974-4061-7940', '+974-3604-5073', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000016', 'SME000016', 'Maryam Davis', 'Finance Director', 'maryam.davis@company.qa', '+974-4859-9132', '+974-4389-7313', True, 'Finance', 'ar');
INSERT INTO contact_persons VALUES ('CNT000017', 'SME000017', 'Khalid Smith', 'CTO', 'khalid.smith@company.qa', '+974-4845-8284', '+974-5933-3039', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000018', 'SME000018', 'Ali Al-Thani', 'Finance Director', 'ali.al-thani@company.qa', '+974-4616-3682', '+974-6735-9544', True, 'Operations', 'ar');
INSERT INTO contact_persons VALUES ('CNT000019', 'SME000019', 'Ahmed Al-Thani', 'Operations Manager', 'ahmed.al-thani@company.qa', '+974-4714-2222', '+974-3579-2590', True, 'Operations', 'ar');
INSERT INTO contact_persons VALUES ('CNT000020', 'SME000020', 'John Al-Thani', 'Finance Director', 'john.al-thani@company.qa', '+974-4935-2197', '+974-6390-9444', True, 'Management', 'ar');
INSERT INTO contact_persons VALUES ('CNT000021', 'SME000021', 'Khalid Brown', 'Technical Lead', 'khalid.brown@company.qa', '+974-4460-1311', '+974-5009-4869', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000022', 'SME000022', 'Ahmed Williams', 'Operations Manager', 'ahmed.williams@company.qa', '+974-4214-8169', '+974-6431-4797', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000023', 'SME000023', 'Ali Brown', 'IT Manager', 'ali.brown@company.qa', '+974-4686-2084', '+974-4358-5047', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000024', 'SME000024', 'John Johnson', 'Operations Manager', 'john.johnson@company.qa', '+974-4357-6690', '+974-6294-3144', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000025', 'SME000025', 'Sarah Al-Marri', 'Technical Lead', 'sarah.al-marri@company.qa', '+974-4978-5070', '+974-4999-7549', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000026', 'SME000026', 'Khalid Al-Marri', 'IT Manager', 'khalid.al-marri@company.qa', '+974-4798-1958', '+974-3924-6780', True, 'Operations', 'ar');
INSERT INTO contact_persons VALUES ('CNT000027', 'SME000027', 'Michael Brown', 'IT Manager', 'michael.brown@company.qa', '+974-4196-2534', '+974-6274-7020', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000028', 'SME000028', 'Emma Brown', 'Technical Lead', 'emma.brown@company.qa', '+974-4781-9007', '+974-4004-4235', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000029', 'SME000029', 'Emma Brown', 'IT Manager', 'emma.brown@company.qa', '+974-4851-2670', '+974-4232-7902', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000030', 'SME000030', 'John Smith', 'CTO', 'john.smith@company.qa', '+974-4676-3975', '+974-6804-4253', True, 'Technical', 'ar');
INSERT INTO contact_persons VALUES ('CNT000031', 'SME000031', 'John Williams', 'Technical Lead', 'john.williams@company.qa', '+974-4935-9836', '+974-4208-5840', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000032', 'SME000032', 'Ali Al-Thani', 'Operations Manager', 'ali.al-thani@company.qa', '+974-4102-2818', '+974-3691-8484', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000033', 'SME000033', 'Khalid Smith', 'Operations Manager', 'khalid.smith@company.qa', '+974-4083-4778', '+974-6277-7631', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000034', 'SME000034', 'Emma Brown', 'CTO', 'emma.brown@company.qa', '+974-4586-3736', '+974-3774-8409', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000035', 'SME000035', 'Noura Brown', 'Operations Manager', 'noura.brown@company.qa', '+974-4213-3916', '+974-5736-3609', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000036', 'SME000036', 'Maryam Smith', 'CTO', 'maryam.smith@company.qa', '+974-4023-7217', '+974-6628-3982', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000037', 'SME000037', 'Maryam Al-Thani', 'Operations Manager', 'maryam.al-thani@company.qa', '+974-4130-6676', '+974-4101-7511', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000038', 'SME000038', 'John Brown', 'IT Manager', 'john.brown@company.qa', '+974-4856-7489', '+974-3024-7532', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000039', 'SME000039', 'Michael Brown', 'IT Manager', 'michael.brown@company.qa', '+974-4693-6869', '+974-5417-2227', True, 'Technical', 'ar');
INSERT INTO contact_persons VALUES ('CNT000040', 'SME000040', 'Sarah Al-Marri', 'IT Manager', 'sarah.al-marri@company.qa', '+974-4655-8418', '+974-6543-2796', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000041', 'SME000041', 'Maryam Williams', 'Finance Director', 'maryam.williams@company.qa', '+974-4282-2235', '+974-3854-7240', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000042', 'SME000042', 'Khalid Johnson', 'Operations Manager', 'khalid.johnson@company.qa', '+974-4477-2375', '+974-3803-3715', True, 'Finance', 'ar');
INSERT INTO contact_persons VALUES ('CNT000043', 'SME000043', 'Emma Smith', 'CEO', 'emma.smith@company.qa', '+974-4600-3887', '+974-6194-4631', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000044', 'SME000044', 'Emma Al-Thani', 'CEO', 'emma.al-thani@company.qa', '+974-4558-4896', '+974-3515-6727', True, 'Finance', 'ar');
INSERT INTO contact_persons VALUES ('CNT000045', 'SME000045', 'Noura Smith', 'CTO', 'noura.smith@company.qa', '+974-4348-7931', '+974-3207-8153', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000046', 'SME000046', 'Fatima Williams', 'Technical Lead', 'fatima.williams@company.qa', '+974-4323-6212', '+974-4675-5006', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000047', 'SME000047', 'Ahmed Davis', 'CEO', 'ahmed.davis@company.qa', '+974-4622-8949', '+974-3076-1057', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000048', 'SME000048', 'Emma Brown', 'Operations Manager', 'emma.brown@company.qa', '+974-4318-3539', '+974-3996-9984', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000049', 'SME000049', 'Ahmed Smith', 'CEO', 'ahmed.smith@company.qa', '+974-4541-4038', '+974-3116-7697', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000050', 'SME000050', 'Michael Al-Marri', 'CTO', 'michael.al-marri@company.qa', '+974-4277-5725', '+974-3888-1498', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000051', 'SME000051', 'Noura Al-Kuwari', 'IT Manager', 'noura.al-kuwari@company.qa', '+974-4455-4006', '+974-5342-3850', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000052', 'SME000052', 'Michael Al-Marri', 'Finance Director', 'michael.al-marri@company.qa', '+974-4799-2146', '+974-3751-4154', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000053', 'SME000053', 'Sarah Williams', 'CTO', 'sarah.williams@company.qa', '+974-4693-4779', '+974-5499-2241', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000054', 'SME000054', 'Ali Brown', 'Operations Manager', 'ali.brown@company.qa', '+974-4405-3753', '+974-4110-3439', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000055', 'SME000055', 'John Al-Thani', 'Finance Director', 'john.al-thani@company.qa', '+974-4833-8478', '+974-5960-5126', True, 'IT', 'ar');
INSERT INTO contact_persons VALUES ('CNT000056', 'SME000056', 'Michael Al-Kuwari', 'IT Manager', 'michael.al-kuwari@company.qa', '+974-4393-7330', '+974-4971-7666', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000057', 'SME000057', 'Fatima Smith', 'Technical Lead', 'fatima.smith@company.qa', '+974-4076-3079', '+974-6270-9409', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000058', 'SME000058', 'Sarah Al-Thani', 'CEO', 'sarah.al-thani@company.qa', '+974-4099-1879', '+974-4389-8090', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000059', 'SME000059', 'Khalid Al-Marri', 'IT Manager', 'khalid.al-marri@company.qa', '+974-4224-2807', '+974-4051-5056', True, 'Finance', 'ar');
INSERT INTO contact_persons VALUES ('CNT000060', 'SME000060', 'Ahmed Al-Kuwari', 'Finance Director', 'ahmed.al-kuwari@company.qa', '+974-4367-7159', '+974-6765-2902', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000061', 'SME000061', 'Ahmed Al-Marri', 'CTO', 'ahmed.al-marri@company.qa', '+974-4803-3043', '+974-6713-5738', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000062', 'SME000062', 'Sarah Davis', 'Operations Manager', 'sarah.davis@company.qa', '+974-4988-8148', '+974-4423-3016', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000063', 'SME000063', 'Fatima Davis', 'Operations Manager', 'fatima.davis@company.qa', '+974-4929-4695', '+974-3170-7332', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000064', 'SME000064', 'Michael Al-Kuwari', 'CEO', 'michael.al-kuwari@company.qa', '+974-4398-9767', '+974-6072-7202', True, 'Technical', 'ar');
INSERT INTO contact_persons VALUES ('CNT000065', 'SME000065', 'Ali Al-Marri', 'IT Manager', 'ali.al-marri@company.qa', '+974-4309-6405', '+974-6418-4383', True, 'Technical', 'ar');
INSERT INTO contact_persons VALUES ('CNT000066', 'SME000066', 'Khalid Johnson', 'Finance Director', 'khalid.johnson@company.qa', '+974-4453-7905', '+974-4413-7849', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000067', 'SME000067', 'Emma Al-Thani', 'CEO', 'emma.al-thani@company.qa', '+974-4980-2291', '+974-6541-3106', True, 'Technical', 'ar');
INSERT INTO contact_persons VALUES ('CNT000068', 'SME000068', 'Emma Smith', 'Technical Lead', 'emma.smith@company.qa', '+974-4608-9610', '+974-6096-3950', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000069', 'SME000069', 'Sarah Johnson', 'Operations Manager', 'sarah.johnson@company.qa', '+974-4514-6404', '+974-3713-8742', True, 'Operations', 'ar');
INSERT INTO contact_persons VALUES ('CNT000070', 'SME000070', 'Emma Al-Kuwari', 'CTO', 'emma.al-kuwari@company.qa', '+974-4576-1414', '+974-3118-9402', True, 'Technical', 'ar');
INSERT INTO contact_persons VALUES ('CNT000071', 'SME000071', 'Michael Smith', 'CTO', 'michael.smith@company.qa', '+974-4809-1135', '+974-4838-6495', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000072', 'SME000072', 'John Smith', 'IT Manager', 'john.smith@company.qa', '+974-4526-2777', '+974-4080-8851', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000073', 'SME000073', 'Fatima Smith', 'Finance Director', 'fatima.smith@company.qa', '+974-4293-9743', '+974-6586-3620', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000074', 'SME000074', 'Emma Williams', 'Operations Manager', 'emma.williams@company.qa', '+974-4343-9341', '+974-5059-9078', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000075', 'SME000075', 'John Davis', 'Finance Director', 'john.davis@company.qa', '+974-4151-5781', '+974-6046-5153', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000076', 'SME000076', 'Ahmed Al-Thani', 'CTO', 'ahmed.al-thani@company.qa', '+974-4594-1257', '+974-3900-4394', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000077', 'SME000077', 'Michael Williams', 'IT Manager', 'michael.williams@company.qa', '+974-4155-4709', '+974-4684-9938', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000078', 'SME000078', 'Ahmed Al-Kuwari', 'CEO', 'ahmed.al-kuwari@company.qa', '+974-4018-9065', '+974-6840-1269', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000079', 'SME000079', 'Emma Smith', 'CTO', 'emma.smith@company.qa', '+974-4695-6044', '+974-4315-1691', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000080', 'SME000080', 'Ali Brown', 'Operations Manager', 'ali.brown@company.qa', '+974-4281-3049', '+974-3525-3702', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000081', 'SME000081', 'John Al-Thani', 'Finance Director', 'john.al-thani@company.qa', '+974-4853-9602', '+974-4500-7188', True, 'Management', 'ar');
INSERT INTO contact_persons VALUES ('CNT000082', 'SME000082', 'Khalid Williams', 'Finance Director', 'khalid.williams@company.qa', '+974-4328-2842', '+974-6870-3544', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000083', 'SME000083', 'John Al-Marri', 'CTO', 'john.al-marri@company.qa', '+974-4067-3184', '+974-4963-2902', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000084', 'SME000084', 'Emma Smith', 'Technical Lead', 'emma.smith@company.qa', '+974-4714-7630', '+974-5032-4213', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000085', 'SME000085', 'Sarah Smith', 'Finance Director', 'sarah.smith@company.qa', '+974-4893-5563', '+974-4823-5088', True, 'IT', 'ar');
INSERT INTO contact_persons VALUES ('CNT000086', 'SME000086', 'Ali Brown', 'Finance Director', 'ali.brown@company.qa', '+974-4493-2336', '+974-3233-1479', True, 'Technical', 'ar');
INSERT INTO contact_persons VALUES ('CNT000087', 'SME000087', 'Ali Al-Thani', 'IT Manager', 'ali.al-thani@company.qa', '+974-4119-2733', '+974-6602-9912', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000088', 'SME000088', 'Ahmed Al-Thani', 'Finance Director', 'ahmed.al-thani@company.qa', '+974-4682-5913', '+974-3951-1185', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000089', 'SME000089', 'Khalid Al-Kuwari', 'Technical Lead', 'khalid.al-kuwari@company.qa', '+974-4998-5047', '+974-6971-1106', True, 'Operations', 'ar');
INSERT INTO contact_persons VALUES ('CNT000090', 'SME000090', 'Khalid Al-Marri', 'CTO', 'khalid.al-marri@company.qa', '+974-4013-8911', '+974-4354-3395', True, 'Management', 'ar');
INSERT INTO contact_persons VALUES ('CNT000091', 'SME000091', 'Ali Al-Thani', 'IT Manager', 'ali.al-thani@company.qa', '+974-4877-6390', '+974-6533-7309', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000092', 'SME000092', 'Sarah Davis', 'Finance Director', 'sarah.davis@company.qa', '+974-4542-9038', '+974-5588-9576', True, 'Technical', 'ar');
INSERT INTO contact_persons VALUES ('CNT000093', 'SME000093', 'John Al-Kuwari', 'Technical Lead', 'john.al-kuwari@company.qa', '+974-4337-4163', '+974-4551-2651', True, 'Finance', 'ar');
INSERT INTO contact_persons VALUES ('CNT000094', 'SME000094', 'Emma Al-Marri', 'CEO', 'emma.al-marri@company.qa', '+974-4628-1920', '+974-3905-2706', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000095', 'SME000095', 'Maryam Smith', 'Operations Manager', 'maryam.smith@company.qa', '+974-4970-5522', '+974-4786-8578', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000096', 'SME000096', 'Sarah Davis', 'Operations Manager', 'sarah.davis@company.qa', '+974-4149-2804', '+974-6875-8373', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000097', 'SME000097', 'Sarah Davis', 'CEO', 'sarah.davis@company.qa', '+974-4016-1087', '+974-3379-2722', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000098', 'SME000098', 'John Williams', 'CTO', 'john.williams@company.qa', '+974-4157-6088', '+974-4654-8818', True, 'Technical', 'ar');
INSERT INTO contact_persons VALUES ('CNT000099', 'SME000099', 'Khalid Smith', 'CTO', 'khalid.smith@company.qa', '+974-4845-1624', '+974-6916-7100', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000100', 'SME000100', 'Khalid Al-Thani', 'Finance Director', 'khalid.al-thani@company.qa', '+974-4116-6331', '+974-6990-9728', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000101', 'SME000101', 'Noura Johnson', 'CEO', 'noura.johnson@company.qa', '+974-4291-6402', '+974-3847-3082', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000102', 'SME000102', 'John Brown', 'IT Manager', 'john.brown@company.qa', '+974-4182-2304', '+974-4699-3265', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000103', 'SME000103', 'Sarah Al-Marri', 'Finance Director', 'sarah.al-marri@company.qa', '+974-4096-5271', '+974-3633-4826', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000104', 'SME000104', 'Emma Johnson', 'CTO', 'emma.johnson@company.qa', '+974-4878-7358', '+974-6156-1053', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000105', 'SME000105', 'Noura Al-Kuwari', 'Operations Manager', 'noura.al-kuwari@company.qa', '+974-4651-3710', '+974-4103-2764', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000106', 'SME000106', 'Ahmed Davis', 'Operations Manager', 'ahmed.davis@company.qa', '+974-4414-7191', '+974-5422-7367', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000107', 'SME000107', 'Sarah Al-Marri', 'Finance Director', 'sarah.al-marri@company.qa', '+974-4173-7788', '+974-3314-5824', True, 'Finance', 'ar');
INSERT INTO contact_persons VALUES ('CNT000108', 'SME000108', 'Fatima Johnson', 'IT Manager', 'fatima.johnson@company.qa', '+974-4986-9313', '+974-6669-8086', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000109', 'SME000109', 'Michael Davis', 'Operations Manager', 'michael.davis@company.qa', '+974-4237-9046', '+974-3968-4774', True, 'Operations', 'ar');
INSERT INTO contact_persons VALUES ('CNT000110', 'SME000110', 'Emma Al-Kuwari', 'Operations Manager', 'emma.al-kuwari@company.qa', '+974-4975-5063', '+974-6735-7147', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000111', 'SME000001', 'Ali Smith', 'Operations Manager', 'ali.smith@company.qa', '+974-4544-7621', '+974-4915-2196', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000112', 'SME000002', 'Ali Johnson', 'CEO', 'ali.johnson@company.qa', '+974-4973-6284', '+974-3910-1202', True, 'Management', 'ar');
INSERT INTO contact_persons VALUES ('CNT000113', 'SME000003', 'Noura Al-Kuwari', 'Technical Lead', 'noura.al-kuwari@company.qa', '+974-4244-8155', '+974-6904-4693', True, 'Management', 'ar');
INSERT INTO contact_persons VALUES ('CNT000114', 'SME000004', 'Noura Al-Marri', 'IT Manager', 'noura.al-marri@company.qa', '+974-4530-8219', '+974-6107-3397', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000115', 'SME000005', 'Sarah Johnson', 'CTO', 'sarah.johnson@company.qa', '+974-4265-7932', '+974-3609-2413', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000116', 'SME000006', 'John Smith', 'Operations Manager', 'john.smith@company.qa', '+974-4462-3906', '+974-3577-8707', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000117', 'SME000007', 'Emma Johnson', 'CTO', 'emma.johnson@company.qa', '+974-4136-6999', '+974-5917-3875', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000118', 'SME000008', 'Michael Davis', 'Technical Lead', 'michael.davis@company.qa', '+974-4716-7188', '+974-3990-3836', True, 'Technical', 'ar');
INSERT INTO contact_persons VALUES ('CNT000119', 'SME000009', 'Ali Al-Kuwari', 'Operations Manager', 'ali.al-kuwari@company.qa', '+974-4075-1498', '+974-6582-6108', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000120', 'SME000010', 'Noura Johnson', 'CTO', 'noura.johnson@company.qa', '+974-5000-1229', '+974-3517-7702', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000121', 'SME000011', 'Maryam Johnson', 'CTO', 'maryam.johnson@company.qa', '+974-4451-9182', '+974-6065-7718', True, 'Management', 'ar');
INSERT INTO contact_persons VALUES ('CNT000122', 'SME000012', 'John Williams', 'CEO', 'john.williams@company.qa', '+974-4192-4068', '+974-4791-4475', True, 'Technical', 'ar');
INSERT INTO contact_persons VALUES ('CNT000123', 'SME000013', 'Khalid Davis', 'Technical Lead', 'khalid.davis@company.qa', '+974-4193-5696', '+974-5674-6072', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000124', 'SME000014', 'Michael Johnson', 'Finance Director', 'michael.johnson@company.qa', '+974-4882-8806', '+974-3027-9760', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000125', 'SME000015', 'Fatima Davis', 'IT Manager', 'fatima.davis@company.qa', '+974-4829-9856', '+974-4235-1638', True, 'Finance', 'ar');
INSERT INTO contact_persons VALUES ('CNT000126', 'SME000016', 'Fatima Al-Marri', 'Operations Manager', 'fatima.al-marri@company.qa', '+974-4412-1846', '+974-5065-2453', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000127', 'SME000017', 'Sarah Smith', 'IT Manager', 'sarah.smith@company.qa', '+974-4093-6898', '+974-5762-9988', True, 'Management', 'ar');
INSERT INTO contact_persons VALUES ('CNT000128', 'SME000018', 'John Smith', 'Finance Director', 'john.smith@company.qa', '+974-4359-9460', '+974-3200-5028', True, 'Technical', 'ar');
INSERT INTO contact_persons VALUES ('CNT000129', 'SME000019', 'Emma Williams', 'Technical Lead', 'emma.williams@company.qa', '+974-4342-5656', '+974-6620-5222', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000130', 'SME000020', 'Emma Smith', 'IT Manager', 'emma.smith@company.qa', '+974-4936-1971', '+974-5943-4312', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000131', 'SME000021', 'Fatima Brown', 'CEO', 'fatima.brown@company.qa', '+974-4612-3518', '+974-3558-3919', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000132', 'SME000022', 'Maryam Williams', 'Technical Lead', 'maryam.williams@company.qa', '+974-4813-7865', '+974-5314-6336', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000133', 'SME000023', 'Khalid Al-Thani', 'Finance Director', 'khalid.al-thani@company.qa', '+974-4587-6157', '+974-3063-7134', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000134', 'SME000024', 'Sarah Smith', 'IT Manager', 'sarah.smith@company.qa', '+974-4630-6791', '+974-6213-8994', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000135', 'SME000025', 'Fatima Johnson', 'IT Manager', 'fatima.johnson@company.qa', '+974-4359-4347', '+974-5027-7185', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000136', 'SME000026', 'Emma Brown', 'Operations Manager', 'emma.brown@company.qa', '+974-4436-6601', '+974-4324-4794', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000137', 'SME000027', 'Noura Al-Marri', 'CTO', 'noura.al-marri@company.qa', '+974-4464-4787', '+974-3066-5423', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000138', 'SME000028', 'Maryam Al-Thani', 'Operations Manager', 'maryam.al-thani@company.qa', '+974-4349-7956', '+974-6676-3075', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000139', 'SME000029', 'Noura Al-Marri', 'CTO', 'noura.al-marri@company.qa', '+974-4460-8549', '+974-6463-2854', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000140', 'SME000030', 'Khalid Al-Kuwari', 'CEO', 'khalid.al-kuwari@company.qa', '+974-4087-3383', '+974-4675-3955', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000141', 'SME000031', 'John Smith', 'CTO', 'john.smith@company.qa', '+974-4059-7375', '+974-6389-1178', True, 'Operations', 'ar');
INSERT INTO contact_persons VALUES ('CNT000142', 'SME000032', 'Khalid Al-Kuwari', 'IT Manager', 'khalid.al-kuwari@company.qa', '+974-4366-8192', '+974-6336-5906', True, 'IT', 'ar');
INSERT INTO contact_persons VALUES ('CNT000143', 'SME000033', 'Michael Al-Thani', 'CEO', 'michael.al-thani@company.qa', '+974-4026-3989', '+974-4291-5800', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000144', 'SME000034', 'Ali Al-Thani', 'CTO', 'ali.al-thani@company.qa', '+974-4195-4193', '+974-5529-7651', True, 'Operations', 'ar');
INSERT INTO contact_persons VALUES ('CNT000145', 'SME000035', 'Ali Al-Marri', 'Finance Director', 'ali.al-marri@company.qa', '+974-4383-1488', '+974-5655-5722', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000146', 'SME000036', 'Maryam Davis', 'Finance Director', 'maryam.davis@company.qa', '+974-4339-9266', '+974-3118-6220', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000147', 'SME000037', 'Maryam Brown', 'Finance Director', 'maryam.brown@company.qa', '+974-4587-3873', '+974-5272-1252', True, 'Finance', 'ar');
INSERT INTO contact_persons VALUES ('CNT000148', 'SME000038', 'Ali Smith', 'IT Manager', 'ali.smith@company.qa', '+974-4340-8279', '+974-3516-3528', True, 'Management', 'ar');
INSERT INTO contact_persons VALUES ('CNT000149', 'SME000039', 'John Davis', 'IT Manager', 'john.davis@company.qa', '+974-4697-1372', '+974-4994-2616', True, 'Finance', 'ar');
INSERT INTO contact_persons VALUES ('CNT000150', 'SME000040', 'Fatima Smith', 'Finance Director', 'fatima.smith@company.qa', '+974-4255-1084', '+974-6829-9541', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000151', 'SME000041', 'Michael Al-Thani', 'CTO', 'michael.al-thani@company.qa', '+974-4429-3069', '+974-4538-6987', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000152', 'SME000042', 'Maryam Smith', 'CEO', 'maryam.smith@company.qa', '+974-4854-4790', '+974-6022-3979', True, 'Operations', 'ar');
INSERT INTO contact_persons VALUES ('CNT000153', 'SME000043', 'Ali Al-Kuwari', 'Finance Director', 'ali.al-kuwari@company.qa', '+974-4890-8489', '+974-3235-3349', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000154', 'SME000044', 'John Al-Marri', 'Technical Lead', 'john.al-marri@company.qa', '+974-4016-2024', '+974-5055-8929', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000155', 'SME000045', 'Fatima Brown', 'IT Manager', 'fatima.brown@company.qa', '+974-4417-5238', '+974-5066-9021', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000156', 'SME000046', 'Michael Williams', 'Technical Lead', 'michael.williams@company.qa', '+974-4137-9856', '+974-5386-2626', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000157', 'SME000047', 'Sarah Al-Kuwari', 'Operations Manager', 'sarah.al-kuwari@company.qa', '+974-4511-9168', '+974-6519-8513', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000158', 'SME000048', 'Michael Davis', 'Operations Manager', 'michael.davis@company.qa', '+974-4305-8972', '+974-6760-9024', True, 'Technical', 'ar');
INSERT INTO contact_persons VALUES ('CNT000159', 'SME000049', 'John Davis', 'Finance Director', 'john.davis@company.qa', '+974-4645-7478', '+974-6589-2829', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000160', 'SME000050', 'Fatima Brown', 'CEO', 'fatima.brown@company.qa', '+974-4526-9623', '+974-4338-4255', True, 'Operations', 'ar');
INSERT INTO contact_persons VALUES ('CNT000161', 'SME000051', 'Michael Smith', 'IT Manager', 'michael.smith@company.qa', '+974-4566-6628', '+974-6786-8300', True, 'Operations', 'en');
INSERT INTO contact_persons VALUES ('CNT000162', 'SME000052', 'John Davis', 'Operations Manager', 'john.davis@company.qa', '+974-4347-1260', '+974-3671-2579', True, 'IT', 'ar');
INSERT INTO contact_persons VALUES ('CNT000163', 'SME000053', 'Noura Smith', 'Operations Manager', 'noura.smith@company.qa', '+974-4754-9492', '+974-5607-6691', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000164', 'SME000054', 'Fatima Smith', 'CEO', 'fatima.smith@company.qa', '+974-4186-5747', '+974-4641-8428', True, 'Finance', 'ar');
INSERT INTO contact_persons VALUES ('CNT000165', 'SME000055', 'Michael Al-Marri', 'CEO', 'michael.al-marri@company.qa', '+974-4289-1296', '+974-6034-3240', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000166', 'SME000056', 'Ali Al-Thani', 'Technical Lead', 'ali.al-thani@company.qa', '+974-4453-9164', '+974-3245-8567', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000167', 'SME000057', 'Noura Williams', 'IT Manager', 'noura.williams@company.qa', '+974-4221-2979', '+974-3067-8455', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000168', 'SME000058', 'Noura Al-Thani', 'Finance Director', 'noura.al-thani@company.qa', '+974-4611-3305', '+974-6329-2395', True, 'Technical', 'ar');
INSERT INTO contact_persons VALUES ('CNT000169', 'SME000059', 'Khalid Williams', 'CTO', 'khalid.williams@company.qa', '+974-4706-5503', '+974-3849-3250', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000170', 'SME000060', 'Maryam Al-Marri', 'CEO', 'maryam.al-marri@company.qa', '+974-4724-4319', '+974-6102-6558', True, 'Technical', 'ar');
INSERT INTO contact_persons VALUES ('CNT000171', 'SME000061', 'Fatima Al-Marri', 'Technical Lead', 'fatima.al-marri@company.qa', '+974-4095-4858', '+974-3362-5423', True, 'Management', 'ar');
INSERT INTO contact_persons VALUES ('CNT000172', 'SME000062', 'Noura Al-Kuwari', 'Finance Director', 'noura.al-kuwari@company.qa', '+974-4699-8246', '+974-3003-6685', True, 'IT', 'en');
INSERT INTO contact_persons VALUES ('CNT000173', 'SME000063', 'Emma Smith', 'IT Manager', 'emma.smith@company.qa', '+974-4765-3257', '+974-3224-3444', True, 'Technical', 'en');
INSERT INTO contact_persons VALUES ('CNT000174', 'SME000064', 'Ali Al-Thani', 'Finance Director', 'ali.al-thani@company.qa', '+974-4185-7401', '+974-5564-9235', True, 'Management', 'ar');
INSERT INTO contact_persons VALUES ('CNT000175', 'SME000065', 'Fatima Al-Kuwari', 'Finance Director', 'fatima.al-kuwari@company.qa', '+974-4957-8521', '+974-5952-8561', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000176', 'SME000066', 'Khalid Brown', 'CEO', 'khalid.brown@company.qa', '+974-4109-1467', '+974-6764-7675', True, 'Finance', 'en');
INSERT INTO contact_persons VALUES ('CNT000177', 'SME000067', 'Emma Brown', 'Finance Director', 'emma.brown@company.qa', '+974-4464-5196', '+974-6888-7457', True, 'Technical', 'ar');
INSERT INTO contact_persons VALUES ('CNT000178', 'SME000068', 'John Williams', 'CEO', 'john.williams@company.qa', '+974-4480-4995', '+974-5825-2358', True, 'Finance', 'ar');
INSERT INTO contact_persons VALUES ('CNT000179', 'SME000069', 'Michael Smith', 'IT Manager', 'michael.smith@company.qa', '+974-4958-7073', '+974-4124-1638', True, 'Management', 'en');
INSERT INTO contact_persons VALUES ('CNT000180', 'SME000070', 'Michael Al-Kuwari', 'CEO', 'michael.al-kuwari@company.qa', '+974-4297-7391', '+974-4407-4060', True, 'Operations', 'en');

-- Service Usage table
CREATE TABLE IF NOT EXISTS service_usage (
    usage_id TEXT(20) PRIMARY KEY,
    customer_id TEXT(20) NOT NULL,
    month_year TEXT(7) NOT NULL,
    bandwidth_usage_gb REAL(10, 2),
    cloud_compute_hours REAL(10, 2),
    cloud_storage_gb REAL(10, 2),
    iot_device_count INT,
    iot_data_usage_mb REAL(10, 2),
    api_calls INT,
    support_tickets_count INT,
    total_charges REAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO service_usage VALUES ('USG000001', 'SME000001', '2024-07', 3625.37, 757.13, 457.06, 236, 23723.12, 89991, 9, 2945.44);
INSERT INTO service_usage VALUES ('USG000002', 'SME000002', '2024-01', 4282.57, 330.87, 362.77, 286, 16020.93, 27708, 1, 7072.4);
INSERT INTO service_usage VALUES ('USG000003', 'SME000003', '2024-01', 4948.18, 392.55, 428.91, 388, 6762.46, 32465, 4, 2651.03);
INSERT INTO service_usage VALUES ('USG000004', 'SME000004', '2024-03', 4009.91, 942.45, 1796.45, 485, 21759.47, 54770, 3, 943.37);
INSERT INTO service_usage VALUES ('USG000005', 'SME000005', '2024-07', 3996.4, 456.83, 1075.2, 148, 42148.49, 46583, 0, 5172.3);
INSERT INTO service_usage VALUES ('USG000006', 'SME000006', '2024-03', 1528.15, 43.35, 547.18, 7, 21358.68, 84981, 5, 877.31);
INSERT INTO service_usage VALUES ('USG000007', 'SME000007', '2024-10', 215.69, 608.43, 1207.76, 463, 36594.89, 31273, 6, 7296.23);
INSERT INTO service_usage VALUES ('USG000008', 'SME000008', '2024-10', 4517.19, 159.29, 1903.96, 397, 12075.53, 69821, 8, 2992.98);
INSERT INTO service_usage VALUES ('USG000009', 'SME000009', '2024-01', 3898.57, 288.74, 1801.75, 200, 24924.71, 91095, 1, 5786.39);
INSERT INTO service_usage VALUES ('USG000010', 'SME000010', '2024-06', 3989.72, 991.0, 80.05, 449, 15819.1, 30795, 2, 782.8);
INSERT INTO service_usage VALUES ('USG000011', 'SME000011', '2024-01', 3883.04, 562.02, 178.33, 195, 18113.94, 59802, 9, 3876.35);
INSERT INTO service_usage VALUES ('USG000012', 'SME000012', '2024-02', 4420.01, 926.19, 422.89, 312, 41783.67, 14908, 9, 7680.14);
INSERT INTO service_usage VALUES ('USG000013', 'SME000013', '2024-02', 2020.23, 782.35, 661.43, 1, 46215.6, 60259, 1, 2209.44);
INSERT INTO service_usage VALUES ('USG000014', 'SME000014', '2024-02', 4084.69, 967.35, 263.28, 273, 23819.1, 54237, 0, 4359.29);
INSERT INTO service_usage VALUES ('USG000015', 'SME000015', '2024-04', 63.77, 160.94, 1785.25, 400, 12393.82, 86495, 9, 2681.5);
INSERT INTO service_usage VALUES ('USG000016', 'SME000016', '2024-03', 978.4, 553.5, 1859.74, 251, 41620.85, 27762, 5, 940.3);
INSERT INTO service_usage VALUES ('USG000017', 'SME000017', '2024-08', 549.18, 253.71, 1242.0, 182, 42347.27, 35171, 5, 1311.69);
INSERT INTO service_usage VALUES ('USG000018', 'SME000018', '2024-08', 3676.12, 168.15, 529.45, 353, 9669.32, 20383, 3, 3626.17);
INSERT INTO service_usage VALUES ('USG000019', 'SME000019', '2024-02', 3376.11, 963.52, 260.47, 307, 45413.64, 47150, 3, 1275.1);
INSERT INTO service_usage VALUES ('USG000020', 'SME000020', '2024-08', 93.63, 731.19, 1185.27, 394, 35701.65, 69198, 1, 4123.91);
INSERT INTO service_usage VALUES ('USG000021', 'SME000021', '2024-03', 1129.12, 542.46, 1235.44, 100, 33942.45, 50174, 10, 3090.81);
INSERT INTO service_usage VALUES ('USG000022', 'SME000022', '2024-05', 1072.44, 364.4, 662.83, 399, 45253.54, 57498, 1, 7527.61);
INSERT INTO service_usage VALUES ('USG000023', 'SME000023', '2024-07', 420.17, 695.16, 1970.07, 165, 29993.62, 96212, 1, 1320.1);
INSERT INTO service_usage VALUES ('USG000024', 'SME000024', '2024-01', 1388.5, 292.92, 1412.34, 230, 28741.39, 96392, 2, 3345.26);
INSERT INTO service_usage VALUES ('USG000025', 'SME000025', '2024-05', 839.08, 218.24, 897.42, 267, 28931.1, 72966, 9, 3935.3);
INSERT INTO service_usage VALUES ('USG000026', 'SME000026', '2024-06', 4765.71, 552.88, 1186.15, 14, 37897.36, 33571, 3, 1157.03);
INSERT INTO service_usage VALUES ('USG000027', 'SME000027', '2024-03', 4975.07, 165.89, 1316.45, 76, 27218.88, 34462, 7, 7989.3);
INSERT INTO service_usage VALUES ('USG000028', 'SME000028', '2024-04', 4979.47, 18.52, 1735.32, 217, 1673.52, 54175, 6, 4428.07);
INSERT INTO service_usage VALUES ('USG000029', 'SME000029', '2024-10', 2825.09, 351.17, 535.51, 426, 16091.8, 96842, 8, 1732.82);
INSERT INTO service_usage VALUES ('USG000030', 'SME000030', '2024-03', 2532.81, 345.45, 854.16, 24, 25497.95, 95169, 7, 3528.79);
INSERT INTO service_usage VALUES ('USG000031', 'SME000031', '2024-09', 157.79, 395.24, 221.45, 68, 35991.82, 23643, 10, 2964.89);
INSERT INTO service_usage VALUES ('USG000032', 'SME000032', '2024-02', 1973.09, 419.0, 1115.4, 46, 13743.99, 17142, 9, 6042.9);
INSERT INTO service_usage VALUES ('USG000033', 'SME000033', '2024-05', 2996.39, 402.27, 1732.92, 247, 13629.08, 30244, 8, 5740.49);
INSERT INTO service_usage VALUES ('USG000034', 'SME000034', '2024-01', 791.57, 13.52, 1509.42, 370, 21530.46, 65050, 5, 3316.76);
INSERT INTO service_usage VALUES ('USG000035', 'SME000035', '2024-06', 4790.96, 274.58, 1425.56, 491, 10093.45, 65021, 6, 2474.79);
INSERT INTO service_usage VALUES ('USG000036', 'SME000036', '2024-09', 1760.01, 486.52, 1393.6, 86, 18207.57, 40653, 9, 6427.73);
INSERT INTO service_usage VALUES ('USG000037', 'SME000037', '2024-06', 3949.23, 322.04, 984.65, 88, 27985.65, 45077, 4, 6519.21);
INSERT INTO service_usage VALUES ('USG000038', 'SME000038', '2024-10', 4994.01, 595.88, 1143.2, 23, 38126.42, 58861, 7, 4806.69);
INSERT INTO service_usage VALUES ('USG000039', 'SME000039', '2024-03', 4454.17, 997.75, 1830.32, 303, 18858.73, 15885, 6, 6165.34);
INSERT INTO service_usage VALUES ('USG000040', 'SME000040', '2024-02', 1264.27, 122.18, 1056.65, 28, 44959.92, 48823, 10, 5578.07);
INSERT INTO service_usage VALUES ('USG000041', 'SME000041', '2024-08', 1410.7, 906.03, 601.76, 60, 19783.91, 11946, 1, 3894.1);
INSERT INTO service_usage VALUES ('USG000042', 'SME000042', '2024-01', 4812.72, 592.13, 1839.61, 104, 46138.8, 4509, 6, 6233.66);
INSERT INTO service_usage VALUES ('USG000043', 'SME000043', '2024-05', 3886.47, 45.88, 288.77, 374, 25471.26, 65019, 2, 1899.55);
INSERT INTO service_usage VALUES ('USG000044', 'SME000044', '2024-10', 2232.21, 253.11, 161.88, 258, 18887.37, 95275, 1, 1758.53);
INSERT INTO service_usage VALUES ('USG000045', 'SME000045', '2024-10', 3442.13, 885.46, 1327.26, 459, 7715.47, 86689, 4, 7468.86);
INSERT INTO service_usage VALUES ('USG000046', 'SME000046', '2024-09', 2886.21, 721.12, 1786.74, 30, 18497.92, 68131, 1, 7314.56);
INSERT INTO service_usage VALUES ('USG000047', 'SME000047', '2024-08', 3467.21, 599.45, 821.23, 155, 20706.28, 66944, 7, 7689.0);
INSERT INTO service_usage VALUES ('USG000048', 'SME000048', '2024-09', 2857.03, 717.82, 905.87, 115, 9290.79, 17712, 7, 2117.32);
INSERT INTO service_usage VALUES ('USG000049', 'SME000049', '2024-09', 178.94, 403.82, 464.33, 108, 34282.99, 27640, 10, 1826.15);
INSERT INTO service_usage VALUES ('USG000050', 'SME000050', '2024-10', 4139.04, 145.97, 1516.12, 292, 42357.77, 34844, 2, 7158.5);
INSERT INTO service_usage VALUES ('USG000051', 'SME000051', '2024-08', 1360.86, 965.89, 243.47, 90, 8163.97, 85423, 2, 7795.7);
INSERT INTO service_usage VALUES ('USG000052', 'SME000052', '2024-07', 4730.59, 234.53, 553.07, 296, 39750.05, 10101, 2, 6636.06);
INSERT INTO service_usage VALUES ('USG000053', 'SME000053', '2024-06', 3397.41, 708.2, 1587.73, 4, 6843.89, 1785, 5, 6973.22);
INSERT INTO service_usage VALUES ('USG000054', 'SME000054', '2024-05', 2450.89, 329.54, 1693.08, 135, 35841.96, 6917, 5, 5178.23);
INSERT INTO service_usage VALUES ('USG000055', 'SME000055', '2024-09', 3487.95, 13.09, 213.47, 393, 10709.84, 69285, 2, 1020.59);
INSERT INTO service_usage VALUES ('USG000056', 'SME000056', '2024-06', 455.8, 790.65, 796.35, 138, 13081.59, 81442, 0, 1569.45);
INSERT INTO service_usage VALUES ('USG000057', 'SME000057', '2024-02', 2116.4, 38.98, 720.04, 182, 21690.74, 61260, 7, 6887.07);
INSERT INTO service_usage VALUES ('USG000058', 'SME000058', '2024-07', 2146.24, 432.58, 1293.33, 369, 1400.62, 5451, 3, 3290.13);
INSERT INTO service_usage VALUES ('USG000059', 'SME000059', '2024-05', 4388.99, 528.54, 1514.74, 377, 31678.76, 81517, 10, 3676.05);
INSERT INTO service_usage VALUES ('USG000060', 'SME000060', '2024-03', 281.12, 467.16, 598.59, 399, 11426.97, 70116, 4, 4185.75);
INSERT INTO service_usage VALUES ('USG000061', 'SME000061', '2024-06', 1470.31, 353.1, 1446.55, 465, 10036.83, 9443, 7, 5896.76);
INSERT INTO service_usage VALUES ('USG000062', 'SME000062', '2024-02', 2567.98, 117.82, 358.42, 356, 28783.06, 11423, 4, 1533.06);
INSERT INTO service_usage VALUES ('USG000063', 'SME000063', '2024-05', 2025.3, 123.56, 265.84, 244, 11023.45, 40135, 7, 5109.05);
INSERT INTO service_usage VALUES ('USG000064', 'SME000064', '2024-08', 1642.0, 822.69, 26.56, 148, 2444.2, 65960, 10, 4298.81);
INSERT INTO service_usage VALUES ('USG000065', 'SME000065', '2024-04', 1595.07, 894.18, 17.69, 107, 38937.04, 81968, 6, 3573.44);
INSERT INTO service_usage VALUES ('USG000066', 'SME000066', '2024-07', 2547.32, 15.01, 1531.27, 356, 25101.45, 54610, 9, 7206.02);
INSERT INTO service_usage VALUES ('USG000067', 'SME000067', '2024-08', 2529.9, 809.32, 1293.62, 105, 9284.98, 47351, 0, 1201.97);
INSERT INTO service_usage VALUES ('USG000068', 'SME000068', '2024-03', 1944.2, 62.02, 1565.25, 266, 40255.15, 21587, 9, 2725.26);
INSERT INTO service_usage VALUES ('USG000069', 'SME000069', '2024-01', 3268.83, 505.85, 1717.57, 259, 39698.86, 45064, 7, 5041.37);
INSERT INTO service_usage VALUES ('USG000070', 'SME000070', '2024-03', 4072.33, 549.81, 1248.38, 261, 29139.46, 86307, 6, 3403.78);
INSERT INTO service_usage VALUES ('USG000071', 'SME000071', '2024-08', 4357.37, 813.4, 1302.41, 226, 31727.66, 6521, 9, 1349.24);
INSERT INTO service_usage VALUES ('USG000072', 'SME000072', '2024-07', 2068.64, 972.6, 1902.86, 458, 44094.97, 24268, 1, 3693.55);
INSERT INTO service_usage VALUES ('USG000073', 'SME000073', '2024-06', 3614.07, 18.89, 1741.17, 442, 49883.61, 3428, 4, 1986.72);
INSERT INTO service_usage VALUES ('USG000074', 'SME000074', '2024-01', 1213.91, 251.91, 1084.59, 498, 48702.46, 53496, 0, 7846.34);
INSERT INTO service_usage VALUES ('USG000075', 'SME000075', '2024-10', 4555.73, 340.98, 1074.07, 256, 287.02, 94838, 7, 2678.98);
INSERT INTO service_usage VALUES ('USG000076', 'SME000076', '2024-01', 3867.28, 286.76, 1806.87, 336, 10599.34, 30998, 8, 6330.78);
INSERT INTO service_usage VALUES ('USG000077', 'SME000077', '2024-07', 3973.07, 834.27, 977.85, 220, 43030.66, 15862, 10, 7665.01);
INSERT INTO service_usage VALUES ('USG000078', 'SME000078', '2024-07', 4355.9, 698.78, 556.94, 49, 14508.72, 92676, 1, 1929.93);
INSERT INTO service_usage VALUES ('USG000079', 'SME000079', '2024-03', 2921.19, 789.86, 1819.1, 253, 17766.64, 29446, 10, 2995.67);
INSERT INTO service_usage VALUES ('USG000080', 'SME000080', '2024-09', 4826.03, 465.06, 1275.46, 170, 15064.93, 64933, 3, 3955.41);
INSERT INTO service_usage VALUES ('USG000081', 'SME000081', '2024-04', 2959.22, 210.89, 662.41, 165, 39669.3, 17900, 5, 7675.51);
INSERT INTO service_usage VALUES ('USG000082', 'SME000082', '2024-09', 2844.69, 647.16, 632.88, 110, 40062.41, 53933, 10, 2406.11);
INSERT INTO service_usage VALUES ('USG000083', 'SME000083', '2024-02', 4181.04, 776.84, 352.34, 422, 25456.65, 36634, 5, 3759.18);
INSERT INTO service_usage VALUES ('USG000084', 'SME000084', '2024-05', 692.23, 593.07, 365.56, 347, 21425.64, 94149, 5, 7166.64);
INSERT INTO service_usage VALUES ('USG000085', 'SME000085', '2024-02', 108.63, 266.55, 1291.89, 331, 22363.89, 69868, 1, 7583.01);
INSERT INTO service_usage VALUES ('USG000086', 'SME000086', '2024-03', 530.82, 125.89, 1849.84, 165, 27649.72, 18581, 7, 4623.37);
INSERT INTO service_usage VALUES ('USG000087', 'SME000087', '2024-08', 92.45, 912.12, 923.32, 293, 38670.25, 48306, 2, 6615.81);
INSERT INTO service_usage VALUES ('USG000088', 'SME000088', '2024-05', 2558.8, 331.6, 935.98, 253, 35495.56, 52374, 4, 5886.2);
INSERT INTO service_usage VALUES ('USG000089', 'SME000089', '2024-06', 2264.27, 377.43, 1705.93, 116, 39960.19, 17167, 7, 2306.85);
INSERT INTO service_usage VALUES ('USG000090', 'SME000090', '2024-01', 3053.26, 12.43, 1258.61, 147, 44496.26, 10474, 8, 4976.09);
INSERT INTO service_usage VALUES ('USG000091', 'SME000091', '2024-04', 3639.63, 612.17, 40.79, 119, 11790.98, 46267, 6, 2795.63);
INSERT INTO service_usage VALUES ('USG000092', 'SME000092', '2024-02', 340.97, 190.0, 1528.3, 249, 17687.89, 38740, 6, 4609.43);
INSERT INTO service_usage VALUES ('USG000093', 'SME000093', '2024-07', 306.28, 469.73, 216.77, 95, 4694.56, 57861, 8, 2073.33);
INSERT INTO service_usage VALUES ('USG000094', 'SME000094', '2024-10', 4306.57, 463.74, 1469.32, 316, 49737.7, 26254, 7, 1876.67);
INSERT INTO service_usage VALUES ('USG000095', 'SME000095', '2024-07', 4123.88, 196.11, 398.43, 160, 48209.56, 6346, 3, 504.25);
INSERT INTO service_usage VALUES ('USG000096', 'SME000096', '2024-01', 117.58, 271.3, 1815.88, 25, 46119.08, 58826, 8, 7851.62);
INSERT INTO service_usage VALUES ('USG000097', 'SME000097', '2024-03', 1861.34, 78.75, 1205.44, 301, 35569.07, 43666, 5, 7016.21);
INSERT INTO service_usage VALUES ('USG000098', 'SME000098', '2024-07', 1949.57, 925.01, 1569.43, 287, 40475.83, 36682, 4, 6245.06);
INSERT INTO service_usage VALUES ('USG000099', 'SME000099', '2024-03', 2394.32, 328.63, 118.52, 77, 16377.86, 47303, 4, 5992.79);
INSERT INTO service_usage VALUES ('USG000100', 'SME000100', '2024-02', 4727.12, 780.19, 1777.06, 136, 2738.96, 30419, 6, 7957.5);
INSERT INTO service_usage VALUES ('USG000101', 'SME000101', '2024-02', 4128.82, 415.72, 377.61, 382, 35083.32, 2865, 7, 5976.37);
INSERT INTO service_usage VALUES ('USG000102', 'SME000102', '2024-08', 674.48, 371.78, 490.96, 99, 9060.6, 22677, 2, 5446.81);
INSERT INTO service_usage VALUES ('USG000103', 'SME000103', '2024-01', 1270.18, 308.42, 725.54, 142, 39487.63, 45980, 1, 4230.49);
INSERT INTO service_usage VALUES ('USG000104', 'SME000104', '2024-02', 703.98, 83.92, 1615.44, 49, 1098.33, 41126, 4, 7050.44);
INSERT INTO service_usage VALUES ('USG000105', 'SME000105', '2024-08', 3466.3, 147.06, 432.34, 451, 15424.31, 27347, 8, 6268.65);
INSERT INTO service_usage VALUES ('USG000106', 'SME000106', '2024-04', 1891.64, 816.7, 671.29, 241, 47122.25, 3194, 9, 5089.04);
INSERT INTO service_usage VALUES ('USG000107', 'SME000107', '2024-01', 4044.79, 931.35, 216.8, 76, 49743.42, 50980, 10, 3836.38);
INSERT INTO service_usage VALUES ('USG000108', 'SME000108', '2024-09', 1343.58, 467.41, 1588.31, 491, 18440.13, 71026, 8, 7810.11);
INSERT INTO service_usage VALUES ('USG000109', 'SME000109', '2024-01', 614.35, 246.75, 1249.08, 438, 25587.61, 21120, 6, 7083.63);
INSERT INTO service_usage VALUES ('USG000110', 'SME000110', '2024-04', 3613.77, 378.85, 602.97, 402, 3710.03, 89332, 4, 6631.45);
INSERT INTO service_usage VALUES ('USG000111', 'SME000001', '2024-08', 2661.03, 587.95, 1825.89, 466, 48872.47, 8885, 6, 4276.05);
INSERT INTO service_usage VALUES ('USG000112', 'SME000002', '2024-01', 400.36, 435.98, 807.26, 299, 12237.68, 29993, 10, 4911.29);
INSERT INTO service_usage VALUES ('USG000113', 'SME000003', '2024-09', 3752.84, 716.72, 462.0, 259, 33539.29, 74945, 1, 3943.75);
INSERT INTO service_usage VALUES ('USG000114', 'SME000004', '2024-02', 905.73, 554.7, 995.48, 204, 24633.63, 93562, 7, 7922.58);
INSERT INTO service_usage VALUES ('USG000115', 'SME000005', '2024-07', 4371.61, 175.66, 250.7, 75, 21705.94, 2564, 6, 3220.4);
INSERT INTO service_usage VALUES ('USG000116', 'SME000006', '2024-10', 3069.91, 541.94, 16.6, 256, 15369.92, 59715, 5, 3337.17);
INSERT INTO service_usage VALUES ('USG000117', 'SME000007', '2024-07', 151.51, 345.86, 1540.68, 449, 21016.31, 23544, 8, 5733.46);
INSERT INTO service_usage VALUES ('USG000118', 'SME000008', '2024-09', 3216.78, 836.66, 1403.94, 53, 36897.44, 82354, 2, 778.27);
INSERT INTO service_usage VALUES ('USG000119', 'SME000009', '2024-07', 4131.41, 318.24, 1358.58, 449, 3696.19, 84160, 9, 2673.01);
INSERT INTO service_usage VALUES ('USG000120', 'SME000010', '2024-09', 4395.34, 332.87, 387.96, 48, 13983.59, 92860, 4, 7759.95);
INSERT INTO service_usage VALUES ('USG000121', 'SME000011', '2024-09', 1298.01, 284.72, 1879.57, 363, 48160.29, 44461, 6, 1091.9);
INSERT INTO service_usage VALUES ('USG000122', 'SME000012', '2024-04', 200.08, 444.13, 417.47, 147, 11678.32, 61058, 3, 5194.69);
INSERT INTO service_usage VALUES ('USG000123', 'SME000013', '2024-01', 3485.59, 557.74, 1256.39, 8, 46878.79, 43568, 2, 2158.22);
INSERT INTO service_usage VALUES ('USG000124', 'SME000014', '2024-02', 3891.67, 890.91, 1266.55, 34, 22354.43, 8193, 5, 2234.12);
INSERT INTO service_usage VALUES ('USG000125', 'SME000015', '2024-05', 1224.82, 36.01, 714.61, 188, 32903.45, 13215, 8, 4464.94);
INSERT INTO service_usage VALUES ('USG000126', 'SME000016', '2024-03', 1242.09, 155.27, 968.2, 143, 23112.2, 76529, 3, 1097.99);
INSERT INTO service_usage VALUES ('USG000127', 'SME000017', '2024-01', 4843.43, 290.19, 444.88, 362, 23029.37, 92185, 3, 5057.01);
INSERT INTO service_usage VALUES ('USG000128', 'SME000018', '2024-06', 2525.24, 988.13, 90.1, 255, 40266.3, 94483, 1, 1882.03);
INSERT INTO service_usage VALUES ('USG000129', 'SME000019', '2024-02', 1126.08, 49.62, 242.27, 157, 25793.78, 49336, 5, 6867.5);
INSERT INTO service_usage VALUES ('USG000130', 'SME000020', '2024-05', 4824.61, 850.42, 1575.06, 50, 13422.24, 7255, 2, 7611.19);
INSERT INTO service_usage VALUES ('USG000131', 'SME000021', '2024-07', 353.46, 731.34, 598.48, 190, 23312.2, 20237, 9, 6397.38);
INSERT INTO service_usage VALUES ('USG000132', 'SME000022', '2024-04', 1175.37, 966.14, 429.92, 35, 41129.25, 82634, 6, 2353.26);
INSERT INTO service_usage VALUES ('USG000133', 'SME000023', '2024-06', 894.42, 41.37, 1678.0, 260, 7335.83, 93452, 10, 3822.49);
INSERT INTO service_usage VALUES ('USG000134', 'SME000024', '2024-01', 794.06, 821.63, 696.44, 34, 8328.24, 77836, 4, 1581.07);
INSERT INTO service_usage VALUES ('USG000135', 'SME000025', '2024-08', 256.01, 810.92, 1853.98, 413, 25291.61, 32353, 3, 1768.71);
INSERT INTO service_usage VALUES ('USG000136', 'SME000026', '2024-10', 3060.56, 556.96, 662.74, 108, 8286.98, 20687, 9, 7890.27);
INSERT INTO service_usage VALUES ('USG000137', 'SME000027', '2024-07', 4423.83, 91.06, 1475.51, 208, 29759.32, 56485, 10, 5533.87);
INSERT INTO service_usage VALUES ('USG000138', 'SME000028', '2024-04', 1399.51, 700.96, 1910.47, 464, 43681.87, 46075, 7, 5471.51);
INSERT INTO service_usage VALUES ('USG000139', 'SME000029', '2024-08', 1699.85, 204.12, 1647.1, 196, 35293.0, 69791, 4, 4265.23);
INSERT INTO service_usage VALUES ('USG000140', 'SME000030', '2024-05', 2455.85, 612.79, 739.21, 358, 33100.81, 61126, 5, 1668.59);
INSERT INTO service_usage VALUES ('USG000141', 'SME000031', '2024-06', 2623.92, 593.78, 1749.69, 320, 13216.25, 46319, 4, 1971.87);
INSERT INTO service_usage VALUES ('USG000142', 'SME000032', '2024-03', 4926.4, 108.56, 22.87, 369, 19244.48, 87107, 1, 7747.74);
INSERT INTO service_usage VALUES ('USG000143', 'SME000033', '2024-07', 4053.12, 118.85, 1311.89, 481, 15971.68, 57213, 1, 2467.92);
INSERT INTO service_usage VALUES ('USG000144', 'SME000034', '2024-10', 3002.1, 190.92, 1198.94, 125, 38131.23, 74941, 4, 4905.57);
INSERT INTO service_usage VALUES ('USG000145', 'SME000035', '2024-07', 2563.82, 227.14, 1229.77, 35, 41459.29, 69557, 5, 7331.46);
INSERT INTO service_usage VALUES ('USG000146', 'SME000036', '2024-02', 224.35, 71.84, 1467.37, 217, 29348.26, 99522, 7, 1118.44);
INSERT INTO service_usage VALUES ('USG000147', 'SME000037', '2024-05', 643.53, 359.05, 1900.94, 383, 47297.75, 907, 6, 650.83);
INSERT INTO service_usage VALUES ('USG000148', 'SME000038', '2024-03', 4426.9, 540.04, 506.62, 266, 29962.8, 80590, 1, 4944.32);
INSERT INTO service_usage VALUES ('USG000149', 'SME000039', '2024-07', 2783.63, 588.76, 1454.37, 150, 14140.96, 72590, 0, 4855.29);
INSERT INTO service_usage VALUES ('USG000150', 'SME000040', '2024-04', 1830.79, 875.53, 1233.72, 187, 44452.22, 16664, 1, 5694.94);
INSERT INTO service_usage VALUES ('USG000151', 'SME000041', '2024-01', 1974.84, 116.35, 256.61, 286, 37333.39, 52442, 10, 740.51);
INSERT INTO service_usage VALUES ('USG000152', 'SME000042', '2024-07', 2079.42, 464.73, 1295.96, 342, 10462.87, 2218, 5, 7769.68);
INSERT INTO service_usage VALUES ('USG000153', 'SME000043', '2024-07', 2625.11, 359.99, 196.59, 48, 17963.26, 30486, 8, 2969.02);
INSERT INTO service_usage VALUES ('USG000154', 'SME000044', '2024-01', 112.09, 699.12, 849.41, 253, 33142.81, 18347, 3, 7833.99);
INSERT INTO service_usage VALUES ('USG000155', 'SME000045', '2024-09', 1795.21, 817.72, 535.92, 250, 40219.18, 8145, 7, 3603.51);
INSERT INTO service_usage VALUES ('USG000156', 'SME000046', '2024-10', 4522.47, 535.87, 332.52, 231, 224.53, 18377, 1, 4578.72);
INSERT INTO service_usage VALUES ('USG000157', 'SME000047', '2024-03', 1010.67, 343.24, 1904.21, 134, 4494.66, 71265, 3, 7200.24);
INSERT INTO service_usage VALUES ('USG000158', 'SME000048', '2024-04', 2342.01, 533.14, 1811.3, 392, 27787.73, 45123, 2, 2663.72);
INSERT INTO service_usage VALUES ('USG000159', 'SME000049', '2024-03', 2164.36, 784.56, 1174.35, 224, 22323.74, 34988, 8, 5288.8);
INSERT INTO service_usage VALUES ('USG000160', 'SME000050', '2024-01', 2241.45, 396.66, 1946.82, 474, 40147.81, 90807, 10, 3653.41);
INSERT INTO service_usage VALUES ('USG000161', 'SME000051', '2024-04', 2742.3, 480.73, 1876.59, 90, 42704.28, 85745, 1, 3587.69);
INSERT INTO service_usage VALUES ('USG000162', 'SME000052', '2024-03', 4843.61, 21.38, 1796.38, 266, 1694.71, 30010, 10, 4910.11);
INSERT INTO service_usage VALUES ('USG000163', 'SME000053', '2024-05', 1471.72, 321.92, 174.14, 180, 13928.5, 51918, 0, 4651.89);
INSERT INTO service_usage VALUES ('USG000164', 'SME000054', '2024-07', 1997.16, 684.15, 59.09, 400, 33165.7, 98305, 6, 1693.62);
INSERT INTO service_usage VALUES ('USG000165', 'SME000055', '2024-09', 1494.25, 923.7, 342.79, 224, 17304.16, 53529, 4, 5857.58);
INSERT INTO service_usage VALUES ('USG000166', 'SME000056', '2024-01', 4014.39, 610.4, 576.55, 39, 11876.91, 45796, 4, 3911.32);
INSERT INTO service_usage VALUES ('USG000167', 'SME000057', '2024-06', 2367.38, 394.04, 716.96, 425, 24340.12, 29935, 9, 959.65);
INSERT INTO service_usage VALUES ('USG000168', 'SME000058', '2024-10', 3502.2, 139.95, 1708.21, 288, 42967.93, 66130, 8, 4786.59);
INSERT INTO service_usage VALUES ('USG000169', 'SME000059', '2024-09', 4677.21, 241.35, 1476.07, 254, 3499.15, 63816, 9, 6212.99);
INSERT INTO service_usage VALUES ('USG000170', 'SME000060', '2024-03', 2441.65, 422.13, 1683.21, 432, 5906.12, 72866, 2, 6091.12);
INSERT INTO service_usage VALUES ('USG000171', 'SME000061', '2024-01', 3891.19, 452.37, 1563.53, 153, 8641.34, 68792, 10, 6883.8);
INSERT INTO service_usage VALUES ('USG000172', 'SME000062', '2024-04', 2342.85, 400.19, 1226.47, 276, 21099.55, 34458, 8, 578.28);
INSERT INTO service_usage VALUES ('USG000173', 'SME000063', '2024-02', 870.54, 481.0, 572.3, 412, 37150.75, 57685, 3, 3320.83);
INSERT INTO service_usage VALUES ('USG000174', 'SME000064', '2024-02', 2748.28, 709.26, 1364.82, 251, 5260.35, 16948, 9, 1405.05);
INSERT INTO service_usage VALUES ('USG000175', 'SME000065', '2024-02', 284.79, 366.51, 1642.14, 443, 35226.72, 31698, 3, 2048.49);
INSERT INTO service_usage VALUES ('USG000176', 'SME000066', '2024-02', 2658.77, 276.02, 1468.57, 332, 10851.34, 96468, 2, 3717.14);
INSERT INTO service_usage VALUES ('USG000177', 'SME000067', '2024-03', 470.14, 240.0, 296.47, 248, 33690.46, 17608, 5, 4472.86);
INSERT INTO service_usage VALUES ('USG000178', 'SME000068', '2024-08', 1774.3, 388.76, 1905.54, 139, 49112.65, 24773, 9, 7554.37);
INSERT INTO service_usage VALUES ('USG000179', 'SME000069', '2024-06', 4722.45, 429.37, 1545.96, 418, 48884.87, 52252, 0, 1869.11);
INSERT INTO service_usage VALUES ('USG000180', 'SME000070', '2024-08', 434.87, 301.42, 1651.99, 277, 13987.97, 11875, 10, 2005.3);
INSERT INTO service_usage VALUES ('USG000181', 'SME000071', '2024-07', 1788.04, 88.61, 423.11, 195, 18978.21, 45702, 4, 7551.66);
INSERT INTO service_usage VALUES ('USG000182', 'SME000072', '2024-09', 4770.61, 502.41, 52.21, 369, 18084.58, 31736, 2, 647.93);
INSERT INTO service_usage VALUES ('USG000183', 'SME000073', '2024-09', 3924.18, 779.04, 615.96, 175, 14460.4, 66757, 2, 6975.56);
INSERT INTO service_usage VALUES ('USG000184', 'SME000074', '2024-03', 1959.92, 333.17, 1331.67, 476, 11700.11, 768, 3, 7994.79);
INSERT INTO service_usage VALUES ('USG000185', 'SME000075', '2024-04', 2278.1, 918.93, 134.77, 251, 2242.62, 69750, 0, 2792.47);
INSERT INTO service_usage VALUES ('USG000186', 'SME000076', '2024-01', 4644.67, 111.32, 160.01, 179, 39473.96, 26957, 1, 6982.83);
INSERT INTO service_usage VALUES ('USG000187', 'SME000077', '2024-04', 2779.82, 505.82, 1474.24, 436, 12304.6, 20665, 7, 7956.61);
INSERT INTO service_usage VALUES ('USG000188', 'SME000078', '2024-04', 3919.74, 961.29, 1446.02, 423, 25483.74, 78082, 7, 4388.48);
INSERT INTO service_usage VALUES ('USG000189', 'SME000079', '2024-01', 674.04, 469.65, 1661.52, 147, 27559.71, 2126, 2, 5848.82);
INSERT INTO service_usage VALUES ('USG000190', 'SME000080', '2024-10', 1115.82, 245.43, 353.55, 111, 17005.48, 41509, 8, 4310.89);
INSERT INTO service_usage VALUES ('USG000191', 'SME000081', '2024-03', 1963.29, 942.74, 1452.07, 360, 6915.78, 98662, 4, 846.78);
INSERT INTO service_usage VALUES ('USG000192', 'SME000082', '2024-06', 4223.19, 157.59, 566.26, 272, 40086.28, 18907, 10, 1715.22);
INSERT INTO service_usage VALUES ('USG000193', 'SME000083', '2024-07', 4925.73, 265.93, 1767.54, 113, 41621.8, 12961, 10, 6391.56);
INSERT INTO service_usage VALUES ('USG000194', 'SME000084', '2024-06', 493.46, 514.98, 823.45, 410, 12588.07, 70284, 9, 1670.7);
INSERT INTO service_usage VALUES ('USG000195', 'SME000085', '2024-04', 1233.67, 358.79, 1229.91, 188, 49030.0, 67833, 4, 3324.54);
INSERT INTO service_usage VALUES ('USG000196', 'SME000086', '2024-09', 2266.14, 512.78, 236.18, 131, 30245.26, 86381, 2, 6453.22);
INSERT INTO service_usage VALUES ('USG000197', 'SME000087', '2024-10', 1345.56, 931.11, 1902.28, 144, 21282.18, 74667, 4, 3708.55);
INSERT INTO service_usage VALUES ('USG000198', 'SME000088', '2024-09', 647.36, 523.83, 288.65, 182, 5225.23, 50427, 3, 3259.82);
INSERT INTO service_usage VALUES ('USG000199', 'SME000089', '2024-02', 1474.53, 873.3, 1188.23, 368, 48969.51, 14047, 7, 5475.08);
INSERT INTO service_usage VALUES ('USG000200', 'SME000090', '2024-07', 4725.27, 155.32, 516.55, 175, 11538.96, 87667, 4, 2028.96);
