using {sap.ui.riskmanagement as my} from '../db/schema';

service RiskService @(path: 'service/risk') {
    entity Risks @(restrict: [
        {
            grant: ['READ'],
            to   : ['RiskViewer']
        },
        {
            grant: ['*'],
            to   : ['RiskManager']
        }
    ]) as projection on my.Risks;

    annotate Risks with @odata.draft.enabled;

    entity Mitigations @(restrict: [
        {
            grant: ['READ'],
            to   : ['RiskViewer']
        },
        {
            grant: ['*'],
            to   : ['RiskManager']
        }
    ]) as projection on my.Mitigations;

    annotate Mitigations with @odata.draft.enabled;
}
