.class public final synthetic Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$getChipCallback;
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$getChipIdsCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/HidlSupport$Mutable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda0;->f$2:Landroid/os/HidlSupport$Mutable;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda0;->f$2:Landroid/os/HidlSupport$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->$r8$lambda$TxfXuaM5G_s78HDvKoy_KzYTv8g(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;)V

    return-void
.end method

.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda0;->f$2:Landroid/os/HidlSupport$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->$r8$lambda$vOlUXdO1PJ5lKd5BCq5s0Gy-eaM(Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    return-void
.end method
