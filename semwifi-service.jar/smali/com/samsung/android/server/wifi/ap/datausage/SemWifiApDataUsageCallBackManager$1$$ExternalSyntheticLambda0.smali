.class public final synthetic Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$2;I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$2;

    .line 9
    .line 10
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1$$ExternalSyntheticLambda0;->f$1:I

    .line 11
    .line 12
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$2;->$r8$lambda$7WiE3iK-iTnKvF9Oox6IduhFXvI(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$2;I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1;

    .line 19
    .line 20
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1$$ExternalSyntheticLambda0;->f$1:I

    .line 21
    .line 22
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1;->$r8$lambda$_QZCjC0u3oNbikeP6_gahVx_eaM(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1;I)V

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
