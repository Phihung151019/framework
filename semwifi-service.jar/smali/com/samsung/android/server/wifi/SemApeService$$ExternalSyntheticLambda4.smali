.class public final synthetic Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/StringBuilder;

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
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/StringBuilder;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/util/Map$Entry;

    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->$r8$lambda$KHUezq0PG3-_BWYIKBS3SEQLmRA(Ljava/lang/StringBuilder;Ljava/util/Map$Entry;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p1, Lcom/samsung/android/server/wifi/SemApeService$Session;

    .line 15
    .line 16
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->$r8$lambda$89G9dUj_roKJk_zY1N2EDgA_LNw(Ljava/lang/StringBuilder;Lcom/samsung/android/server/wifi/SemApeService$Session;)V

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
