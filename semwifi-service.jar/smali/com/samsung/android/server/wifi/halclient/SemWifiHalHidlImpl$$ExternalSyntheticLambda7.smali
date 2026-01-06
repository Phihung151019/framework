.class public final synthetic Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$getTwtParametersCallback;
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$getChipsetVendorNameCallback;


# instance fields
.field public final synthetic f$0:Landroid/os/HidlSupport$Mutable;

.field public final synthetic f$1:Landroid/os/HidlSupport$Mutable;


# direct methods
.method public synthetic constructor <init>(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda7;->f$0:Landroid/os/HidlSupport$Mutable;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda7;->f$1:Landroid/os/HidlSupport$Mutable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$TwtParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda7;->f$0:Landroid/os/HidlSupport$Mutable;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda7;->f$1:Landroid/os/HidlSupport$Mutable;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->$r8$lambda$1CGkyYqPla3vOQylwD6Ahhfxzfc(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$TwtParams;)V

    return-void
.end method

.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda7;->f$0:Landroid/os/HidlSupport$Mutable;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda7;->f$1:Landroid/os/HidlSupport$Mutable;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->$r8$lambda$IySdDntOfATnq6bxItcFGySQAWE(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    return-void
.end method
