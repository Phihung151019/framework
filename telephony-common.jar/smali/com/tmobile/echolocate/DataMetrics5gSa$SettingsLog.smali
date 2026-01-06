.class Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;
.super Ljava/lang/Object;
.source "DataMetrics5gSa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics5gSa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsLog"
.end annotation


# instance fields
.field private greylist carrierConfigVersion:Ljava/lang/String;

.field private greylist carrierSa5gBandConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist networkMode:Ljava/lang/String;

.field private greylist roaming:Ljava/lang/String;

.field private greylist rtt:Ljava/lang/String;

.field private greylist rttTranscript:Ljava/lang/String;

.field private greylist vonrSetting:Ljava/lang/String;

.field private greylist vonrStatus:Ljava/lang/String;

.field private greylist wifi:Ljava/lang/String;

.field private greylist wifiCalling:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    const-string p1, "-2"

    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->wifiCalling:Ljava/lang/String;

    .line 639
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->wifi:Ljava/lang/String;

    .line 640
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->roaming:Ljava/lang/String;

    .line 641
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->rtt:Ljava/lang/String;

    .line 642
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->rttTranscript:Ljava/lang/String;

    .line 643
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->networkMode:Ljava/lang/String;

    .line 644
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->vonrSetting:Ljava/lang/String;

    .line 645
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->vonrStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public greylist setCarrierConfigVersion(Ljava/lang/String;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->carrierConfigVersion:Ljava/lang/String;

    return-void
.end method

.method public greylist setCarrierSa5gBandConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 709
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->carrierSa5gBandConfig:Ljava/util/Map;

    return-void
.end method

.method public greylist setNetworkMode(Ljava/lang/String;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->networkMode:Ljava/lang/String;

    return-void
.end method

.method public greylist setRoaming(Ljava/lang/String;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->roaming:Ljava/lang/String;

    return-void
.end method

.method public greylist setRtt(Ljava/lang/String;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->rtt:Ljava/lang/String;

    return-void
.end method

.method public greylist setRttTranscript(Ljava/lang/String;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->rttTranscript:Ljava/lang/String;

    return-void
.end method

.method public greylist setVonrSetting(Ljava/lang/String;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->vonrSetting:Ljava/lang/String;

    return-void
.end method

.method public greylist setVonrStatus(Ljava/lang/String;)V
    .locals 0

    .line 725
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->vonrStatus:Ljava/lang/String;

    return-void
.end method

.method public greylist setWifi(Ljava/lang/String;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->wifi:Ljava/lang/String;

    return-void
.end method

.method public greylist setWifiCalling(Ljava/lang/String;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->wifiCalling:Ljava/lang/String;

    return-void
.end method
