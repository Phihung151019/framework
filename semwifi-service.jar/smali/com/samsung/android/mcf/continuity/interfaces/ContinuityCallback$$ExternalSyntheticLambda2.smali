.class public final synthetic Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/os/Parcelable;

    .line 7
    .line 8
    check-cast p1, Landroid/os/Bundle;

    .line 9
    .line 10
    return-object p1

    .line 11
    :pswitch_0
    check-cast p1, Landroid/os/Bundle;

    .line 12
    .line 13
    const-string p0, "KEY_THIS_ACTION_STATE_ACTION_ID"

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    const-string p0, "KEY_THIS_ACTION_STATE_CONNECTED_DEVICES"

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    const-string p0, "KEY_THIS_ACTION_STATE_METADATA"

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 27
    .line 28
    .line 29
    const-string p0, "KEY_THIS_ACTION_STATE_HOST_CONNECTABLE_STATUS"

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const-string p0, "KEY_THIS_ACTION_STATE_CLIENT_CONNECTABLE_STATUS"

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    new-instance p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory$1;

    .line 40
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
