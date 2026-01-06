.class public final synthetic Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$getLinkLayerStats_1_3Callback;
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$getLinkLayerStats_1_6Callback;
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$getLinkLayerStats_1_5Callback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->$r8$lambda$8G6JpfMLH-tSHoaOkA_CAmXIcAQ(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V

    return-void
.end method

.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->$r8$lambda$P8iibP3rfcjPyFpAV9XKxa_NfE8(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;)V

    return-void
.end method

.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->$r8$lambda$oHkLMpmq8l6c_hlAICD-HNfvEEU(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;)V

    return-void
.end method

.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->$r8$lambda$_fqP6Q8X02aqtZxBmFk80_6JlTo(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;)V

    return-void
.end method

.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->$r8$lambda$37BegsMUOYFXWK4njMaqy_JPAME(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;)V

    return-void
.end method

.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->$r8$lambda$Q3MOyXg_23FQEvV-JzgbqSpVgSA(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    return-void
.end method
