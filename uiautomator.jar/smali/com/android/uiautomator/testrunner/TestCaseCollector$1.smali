.class Lcom/android/uiautomator/testrunner/TestCaseCollector$1;
.super Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;
.source "TestCaseCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/testrunner/TestCaseCollector;->error(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/uiautomator/testrunner/TestCaseCollector;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/uiautomator/testrunner/TestCaseCollector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 123
    iput-object p2, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected runTest()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector$1;->val$message:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/uiautomator/testrunner/TestCaseCollector$1;->fail(Ljava/lang/String;)V

    .line 126
    return-void
.end method
