.class public final synthetic Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda2;
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
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

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
    iget v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;->$r8$lambda$pQoz6YJK0yVG3o7mL3KkEan54NM(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;

    .line 15
    .line 16
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;->$r8$lambda$eXsGV0STK_2T2RneUhTxZ5Y6yD4(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    check-cast p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;

    .line 21
    .line 22
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;->$r8$lambda$TmMrrLkJp8eY2ipOtuF_m4ASFNQ(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_2
    check-cast p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 27
    .line 28
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->$r8$lambda$sOAq46NL9dnMier_TjC5ziJe71c(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
