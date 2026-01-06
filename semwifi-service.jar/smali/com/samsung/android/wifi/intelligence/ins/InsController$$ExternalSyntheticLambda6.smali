.class public final synthetic Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/samsung/android/wifi/intelligence/ins/InsController$DataLine;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-wide p0, p1, Lcom/samsung/android/wifi/intelligence/ins/InsController$DataLine;->flushTimestamp:J

    .line 9
    .line 10
    return-wide p0

    .line 11
    :pswitch_0
    iget-wide p0, p1, Lcom/samsung/android/wifi/intelligence/ins/InsController$DataLine;->timestamp:J

    .line 12
    .line 13
    return-wide p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
