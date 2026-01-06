.class public final synthetic Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

.field public final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[BI)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$0:I

    .line 4
    .line 5
    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$3:[B

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$0:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$3:[B

    .line 13
    .line 14
    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->$r8$lambda$I6aCyl0G7z8IyU4PeN-VTUtGIHc(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[B)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$0:I

    .line 19
    .line 20
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;->f$3:[B

    .line 25
    .line 26
    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->$r8$lambda$dj5YOP2tRe4zyfO_JMXP-PE6KPs(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[B)V

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
