fname = 'macav2livneh_pr_bcc-csm1-1_r1i1p1_historical_1990_2005_CONUS_monthly.nc';
% use finfo=ncinfo(fname) or ncdisp(fname) to get the information about a NETCDF file,
% such as dimensions, variables

%% read variables in NETCDF file
lon    = ncread(fname,'lon');
lat    = ncread(fname,'lat');
time   = ncread(fname,'time');
precip = ncread(fname,'precipitation');

% return the dimension size of the variable precip
[nlon,nlat,ntime] = size(precip); 

% return the attribute of the variable precip
units = ncreadatt(fname,'precipitation','units'); 

% replace fillvalues with nan(not a number), which is recognized as fillvalue(missing value) in MATLAB
fillvalue = ncreadatt(fname,'precipitation','_FillValue'); 
precip(precip == fillvalue) = nan;

%% calculate summer(JJA) average
nyear = ntime/12;
year = (1990:2005)';
precip_JJA = zeros(nlon,nlat,nyear); 
for ii = 1:nyear
    precip_JJA(:,:,ii) = nanmean(precip(:,:,6+12*(ii-1):8+12*(ii-1)),3);
end

precip_JJA_climate = nanmean(precip_JJA,3);

%% plot the SE-US domain (25-36.5N,76-91W)averaged time series of summer precipitation 
x1 = find(abs(lon-(360-91)) == min(abs(lon-(360-91))));
x2 = find(abs(lon-(360-76)) == min(abs(lon-(360-76))));
y1 = find(abs(lat-25) == min(abs(lat-25)));
y2 = find(abs(lat-36.5) == min(abs(lat-36.5)));

precip_JJA_domain_avg = reshape(nanmean(nanmean(precip_JJA(x1:x2,y1:y2,:),1),2),nyear,1);
figure;
bar(year,precip_JJA_domain_avg);
xlim([1989.5 2005.5]);ylim([0 200]);
xlabel('Year');ylabel(['Precipitation, ',units]);
title('summer SE-US precipitation')
print('time_series_summer_SE-US_precipitation','-dpng');        

%% plot the climatology of summer precipitation during 1990-2005
figure;
[mlon,mlat] = meshgrid(lon,lat);
subplot(2,1,1);
contourf(mlon,mlat,precip_JJA_climate', ...
    'linestyle','none','levellist',(0:5:250));
c=colorbar;c.Label.String=['precipitation, ',units];% add colorbar and colorbar label
xlabel('Longitude');ylabel('Latitude');             % add x-axis and y-axis labels
title('climatology of the summer precipitation');
subplot(2,1,2);
precip_JJA_climate_std = std(precip_JJA,0,3); 
contourf(mlon,mlat,precip_JJA_climate_std', ...
    'linestyle','none','levellist',(0:1:50));
c=colorbar;c.Label.String=['precipitation, ',units];
xlabel('Longitude');ylabel('Latitude');             
title('standard deviation of the summer precipitation')
set(gcf,'papersize',[8 11.5]);
set(gcf,'paperpositionmode','manual');
set(gcf,'paperunit','inches');
set(gcf,'paperposition',[0 0 8 11.5]);
print('summer_precipitation','-dpng');
