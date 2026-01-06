.class public final synthetic Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;ILcom/samsung/android/wifi/ISemWifiApDataUsageCallback;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    iput p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;ILcom/samsung/android/wifi/ISemWifiApSmartCallback;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    iput p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;->f$1:I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;

    .line 13
    .line 14
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->$r8$lambda$PRV0hg-k8cD_2gr3-Jdr8wx9P7g(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;ILcom/samsung/android/wifi/ISemWifiApDataUsageCallback;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 19
    .line 20
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;->f$1:I

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lcom/samsung/android/wifi/ISemWifiApSmartCallback;

    .line 25
    .line 26
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->$r8$lambda$Xs1bl1NrwwOB7Zlcz8oub2nVItM(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;ILcom/samsung/android/wifi/ISemWifiApSmartCallback;)V

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
