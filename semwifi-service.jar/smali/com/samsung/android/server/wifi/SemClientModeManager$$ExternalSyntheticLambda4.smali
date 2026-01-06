.class public final synthetic Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 13
    .line 14
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->$r8$lambda$cVuxbzRVtUQLQ775jpl8_jJeLPc(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->$r8$lambda$3JumIV03JX_s0tn19k0-D8QwhyU(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
