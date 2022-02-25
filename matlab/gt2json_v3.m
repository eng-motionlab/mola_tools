%%  gt2json
% version: 3
% 
% info:
% - Create json from gt.mat
% 
% author: nuno costa

%%%%
%BUG: ADD PATH INSTEAD of Changing to folder - BUG in 196.png path frame - 
%sometimes it still persists, made a fix in python to account for this error 
%%%%
dataset="INVICON";
rootdir=strcat("Y:\Datasets\Internal Datasets\EASYRIDE\P19\",dataset,"\");
days=dir(rootdir);
days=days(~ismember({days.name},{'.','..'})); %remove '.','..'
nd = length(days);
for i = 1 : nd
    day=days(i).name;
    sessiondir=strcat(rootdir,day,'\');
    sessions=dir(sessiondir);
    sessions=sessions(~ismember({sessions.name},{'.','..'}));
    nss = length(sessions);
    for ii = 1 : nss
        session=sessions(ii).name;
        scenariosdir=strcat(sessiondir,session,'\');
        scenarios=dir(scenariosdir);
        scenarios=scenarios(~ismember({scenarios.name},{'.','..'}));
        nsc = length(scenarios);
        fprintf(day,session);
        parfor iii = 1 : nsc
            try
            scenario=scenarios(iii).name;
            labeldir=strcat(scenariosdir, scenario,'\');
            gtfile=strcat(labeldir,'gt.mat');
            gt_s=load(gtfile);
            encodedJSON=jsonencode(gt_s);
            %new_s.DataSource=gt_s.gTruth.DataSource;
            %new_s.LabelData=gt_s.gTruth.LabelData;
            %new_s.LabelDefinitions=gt_s.gTruth.LabelDefinitions;
            %encodedJSON=jsonencode(new_s);
            %format JSON
            encodedJSON=strrep(encodedJSON,'\\','\\\\');
            %save
            fid=fopen(strcat(labeldir,"gt.json"),'w'); 
            fprintf(fid, encodedJSON);
            catch ME
                fprintf('ERROR: %s\n', ME.message);
            end
        end
    end
end

fclose('all'); 
