.class public final synthetic Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/server/wifi/util/ScanPool;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/util/ScanPool;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 4
    .line 5
    check-cast p1, Landroid/net/wifi/ScanResult;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->$r8$lambda$uoc01bUr8QAb1oyaVmdNz6tf4dg(Lcom/samsung/android/server/wifi/util/ScanPool;Landroid/net/wifi/ScanResult;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->$r8$lambda$gn-oZ3HKLEaczd67_zSX0BDfgSE(Lcom/samsung/android/server/wifi/util/ScanPool;Landroid/net/wifi/ScanResult;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->$r8$lambda$_6U0MnlYz9cmg8P4fESV-IrTZnE(Lcom/samsung/android/server/wifi/util/ScanPool;Landroid/net/wifi/ScanResult;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
