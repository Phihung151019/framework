.class public final synthetic Lcom/samsung/android/server/wifi/SemClientModeManager$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$2$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$2$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$2$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$2$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->$r8$lambda$biDZL3ZCVtS4Q1oHoGyu-jUY5GI(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p0, Lcom/samsung/android/server/wifi/SemClientModeManager$2;

    .line 15
    .line 16
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$2;->$r8$lambda$IDCx_paXB9dyV1sRS2A7FIpMAz0(Lcom/samsung/android/server/wifi/SemClientModeManager$2;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
