.class public final synthetic Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getIdCallback;
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$getAvailableModes_1_6Callback;
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/HidlSupport$Mutable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$2:Landroid/os/HidlSupport$Mutable;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$2:Landroid/os/HidlSupport$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->$r8$lambda$WbZ8ylQT8dMMyx-KPvtsiVIqnA4(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V

    return-void
.end method

.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V
    .locals 2

    .line 2
    iget v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$2:Landroid/os/HidlSupport$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->$r8$lambda$r8xA6IovOYDM1C2XNzjHcXB0VxY(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$2:Landroid/os/HidlSupport$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->$r8$lambda$Hj9HNruNgtGhKCiAP7fNRJQZW5A(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V
    .locals 2

    .line 3
    iget v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$2:Landroid/os/HidlSupport$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->$r8$lambda$1khwT_AETn1U_yteAImuKiyZYqQ(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$2:Landroid/os/HidlSupport$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->$r8$lambda$VPrBTyOmg7AhLM-E-O-eU0ODRUs(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V
    .locals 2

    .line 4
    iget v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$2:Landroid/os/HidlSupport$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->$r8$lambda$cozmqY9_ien37tvUR9hkVb-pz9E(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$2:Landroid/os/HidlSupport$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->$r8$lambda$rt0T0GtSp5eYf1_uyqHy2SneSMM(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 2

    .line 5
    iget v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$2:Landroid/os/HidlSupport$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->$r8$lambda$yVhtQ3JHPYSewtaY7ZnnpqlnUTc(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$2:Landroid/os/HidlSupport$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->$r8$lambda$bvUOrGz4l22WXbvHzkep9WrRkJE(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$2:Landroid/os/HidlSupport$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->$r8$lambda$T1lqiz_5GfolQun3Jcki5HhOTZo(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    return-void

    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$2:Landroid/os/HidlSupport$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->$r8$lambda$0JKhQvP3C6qsOh0z9dZX983N1-g(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    return-void

    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$2:Landroid/os/HidlSupport$Mutable;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->$r8$lambda$LPZzEOOugxfl335DM0o0kP_xOks(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x4 -> :sswitch_2
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
