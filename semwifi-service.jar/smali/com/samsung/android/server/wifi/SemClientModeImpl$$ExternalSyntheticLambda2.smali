.class public final synthetic Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

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
    iget v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/util/Set;

    .line 9
    .line 10
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .line 11
    .line 12
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->$r8$lambda$XNV7bDZreOznDOTxr1kN9ZhY8ZY(Ljava/util/Set;Landroid/net/wifi/WifiConfiguration;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 17
    .line 18
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .line 19
    .line 20
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->$r8$lambda$aSHW60e4KWJjm4kMzf2g4kJ27-U(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
