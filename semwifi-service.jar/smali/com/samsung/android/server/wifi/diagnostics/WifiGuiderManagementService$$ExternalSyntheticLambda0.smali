.class public final synthetic Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$DiagnosticReportListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReportAdded(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->processReport(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
