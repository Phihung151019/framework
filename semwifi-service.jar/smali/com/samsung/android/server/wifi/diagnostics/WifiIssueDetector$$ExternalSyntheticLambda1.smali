.class public final synthetic Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Lcom/samsung/android/server/wifi/util/LogUtils;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 9
    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->$r8$lambda$WLN81n1tmgz1ehF0DLqZi6feE_Q(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 19
    .line 20
    check-cast p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 21
    .line 22
    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->$r8$lambda$wkDrRgh-QbD38k7AzGluOzb6hEU(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
