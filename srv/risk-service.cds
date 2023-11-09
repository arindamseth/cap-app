using {sap.ui.riskmanagement as my} from '../db/schema';

service RiskService @(path: 'service/risk') {
    entity Risks       as projection on my.Risks;
    entity Mitigations as projection on my.Mitigations;
}

annotate RiskService.Risks with @odata.draft.enabled;
annotate RiskService.Mitigations with @odata.draft.enabled;
