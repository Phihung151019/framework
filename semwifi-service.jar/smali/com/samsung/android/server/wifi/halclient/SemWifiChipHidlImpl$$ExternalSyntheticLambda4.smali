.class public final synthetic Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$getCapabilities_1_5Callback;
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getModeCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda4;->f$2:Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda4;->f$2:Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->$r8$lambda$TX1K7oQa0EPKrwURQvdiIWiyUn8(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda4;->f$2:Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->$r8$lambda$-Zm48CfWeOMgvYv_xFAW0YUZ0Po(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
