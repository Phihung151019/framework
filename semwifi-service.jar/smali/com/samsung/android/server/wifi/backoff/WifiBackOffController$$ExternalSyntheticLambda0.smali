.class public final synthetic Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p2, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 11
    .line 12
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->$r8$lambda$f5X5vMuSRYDOnCEB6kmnVHXcMdE(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/BackOffMode;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p2, Lcom/samsung/android/server/wifi/backoff/BackOffStats;

    .line 17
    .line 18
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->$r8$lambda$LE5mpQT56CGtnPEaqokTtT3gqG4(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/BackOffStats;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
