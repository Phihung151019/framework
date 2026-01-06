.class public final synthetic Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

.field public final synthetic f$1:Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;

    .line 7
    .line 8
    iput p3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$$ExternalSyntheticLambda1;->f$4:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;

    .line 4
    .line 5
    iget v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$$ExternalSyntheticLambda1;->f$4:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->$r8$lambda$7mJg2r5hmtHF4xnA-I0kOyMbgDw(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
