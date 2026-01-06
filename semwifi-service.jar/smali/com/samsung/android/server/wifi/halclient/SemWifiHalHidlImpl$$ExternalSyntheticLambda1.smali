.class public final synthetic Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$readFile_2_3Callback;
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi$readFileCallback;
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi$getPropertyCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/os/HidlSupport$Mutable;


# direct methods
.method public synthetic constructor <init>(Landroid/os/HidlSupport$Mutable;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda1;->f$0:Landroid/os/HidlSupport$Mutable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl$$ExternalSyntheticLambda1;->f$0:Landroid/os/HidlSupport$Mutable;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->$r8$lambda$B9Gws6DkOiL0N5PTboabt5X-4ic(Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->$r8$lambda$PcMo4rM79XtuTmh26uE6xBfkFYI(Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->$r8$lambda$nr--yOb6qqQPsiyVMLVL05CMzjU(Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
