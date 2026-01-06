.class public final synthetic Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/wifi/intelligence/ins/InsController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

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
    iget v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/samsung/android/wifi/intelligence/ins/ISemInsTrService;

    .line 9
    .line 10
    check-cast p2, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string p0, "InsController"

    .line 16
    .line 17
    const-string p1, "train"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    check-cast p1, Lcom/samsung/android/wifi/intelligence/ins/ISemInsInfService;

    .line 24
    .line 25
    check-cast p2, Lcom/samsung/android/wifi/intelligence/ins/InsController$InfServiceConnection;

    .line 26
    .line 27
    invoke-static {p0}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->$r8$lambda$YVbCUneQoJ3mFKfLOGwXqvc8IAY(Lcom/samsung/android/wifi/intelligence/ins/InsController;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
