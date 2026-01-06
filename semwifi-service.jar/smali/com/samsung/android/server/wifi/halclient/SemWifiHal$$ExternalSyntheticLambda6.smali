.class public final synthetic Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;ILjava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 4
    .line 5
    iput p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda6;->f$1:I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda6;->f$1:I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->$r8$lambda$qo4tENfP98ifQ5ZTe77rkPTKYFU(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;ILjava/lang/String;)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 18
    .line 19
    iget v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda6;->f$1:I

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->$r8$lambda$lSxJOJQT1zTOGr_782PpwAKQFr0(Lcom/samsung/android/server/wifi/halclient/SemWifiHal;ILjava/lang/String;)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
