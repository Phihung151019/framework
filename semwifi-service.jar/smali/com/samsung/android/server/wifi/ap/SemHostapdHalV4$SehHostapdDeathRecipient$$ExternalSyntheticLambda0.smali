.class public final synthetic Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;J)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;

    .line 9
    .line 10
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient$$ExternalSyntheticLambda0;->f$1:J

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;->$r8$lambda$PTRb1wrwWr50gp37IACBV2iy79k(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;J)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;

    .line 19
    .line 20
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient$$ExternalSyntheticLambda0;->f$1:J

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;->$r8$lambda$UvrHZ4f_9532OX-rQWy-Xsm6ZQM(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;J)V

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
