.class Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;
.super Ljunit/textui/ResultPrinter;
.source "UiAutomatorTestRunner.java"

# interfaces
.implements Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleResultPrinter"
.end annotation


# instance fields
.field private final mFullOutput:Z


# direct methods
.method public constructor <init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;Ljava/io/PrintStream;Z)V
    .locals 0
    .param p2, "writer"    # Ljava/io/PrintStream;
    .param p3, "fullOutput"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 374
    invoke-direct {p0, p2}, Ljunit/textui/ResultPrinter;-><init>(Ljava/io/PrintStream;)V

    .line 375
    iput-boolean p3, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->mFullOutput:Z

    .line 376
    return-void
.end method


# virtual methods
.method public print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V
    .locals 1
    .param p1, "result"    # Ljunit/framework/TestResult;
    .param p2, "runTime"    # J
    .param p4, "testOutput"    # Landroid/os/Bundle;

    .line 380
    invoke-virtual {p0, p2, p3}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->printHeader(J)V

    .line 381
    iget-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->mFullOutput:Z

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->printErrors(Ljunit/framework/TestResult;)V

    .line 383
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->printFailures(Ljunit/framework/TestResult;)V

    .line 385
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->printFooter(Ljunit/framework/TestResult;)V

    .line 386
    return-void
.end method

.method public printUnexpectedError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 390
    iget-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->mFullOutput:Z

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    .line 392
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 391
    const-string v2, "Test run aborted due to unexpected exeption: %s"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 393
    invoke-virtual {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 395
    :cond_0
    return-void
.end method
