.class public Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;
.super Ljunit/framework/TestCase;
.source "UiAutomatorTestCase.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DISABLE_IME:Ljava/lang/String; = "disable_ime"

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final STUB_IME_PACKAGE:Ljava/lang/String; = "com.android.testing.stubime"


# instance fields
.field private mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

.field private mParams:Landroid/os/Bundle;

.field private mShouldDisableIme:Z

.field private mUiDevice:Lcom/android/uiautomator/core/UiDevice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mShouldDisableIme:Z

    return-void
.end method

.method private restoreActiveIme()V
    .locals 0

    .line 164
    return-void
.end method

.method private setStubIme()V
    .locals 8

    .line 132
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 133
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_4

    .line 136
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 138
    .local v1, "im":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 139
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v3, 0x0

    .line 140
    .local v3, "id":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "com.android.testing.stubime"

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 141
    .local v5, "info":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 142
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 144
    .end local v5    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_0
    goto :goto_0

    .line 145
    :cond_1
    if-eqz v3, :cond_3

    .line 149
    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 151
    return-void

    .line 153
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 154
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v5, "selected_input_method_subtype"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    const-string v5, "default_input_method"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 157
    return-void

    .line 146
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Required testing fixture missing: IME package (%s)"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    .end local v1    # "im":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v3    # "id":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ActivityThread.currentApplication() is null."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getAutomationSupport()Lcom/android/uiautomator/testrunner/IAutomationSupport;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getUiDevice()Lcom/android/uiautomator/core/UiDevice;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    return-object v0
.end method

.method setAutomationSupport(Lcom/android/uiautomator/testrunner/IAutomationSupport;)V
    .locals 0
    .param p1, "automationSupport"    # Lcom/android/uiautomator/testrunner/IAutomationSupport;

    .line 119
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    .line 120
    return-void
.end method

.method setParams(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .line 115
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mParams:Landroid/os/Bundle;

    .line 116
    return-void
.end method

.method setUiDevice(Lcom/android/uiautomator/core/UiDevice;)V
    .locals 0
    .param p1, "uiDevice"    # Lcom/android/uiautomator/core/UiDevice;

    .line 107
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    .line 108
    return-void
.end method

.method protected setUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-super {p0}, Ljunit/framework/TestCase;->setUp()V

    .line 59
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mParams:Landroid/os/Bundle;

    const-string v1, "disable_ime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mShouldDisableIme:Z

    .line 60
    iget-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mShouldDisableIme:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setStubIme()V

    .line 63
    :cond_0
    return-void
.end method

.method public sleep(J)V
    .locals 0
    .param p1, "ms"    # J

    .line 128
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 129
    return-void
.end method

.method protected tearDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    iget-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mShouldDisableIme:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->restoreActiveIme()V

    .line 70
    :cond_0
    invoke-super {p0}, Ljunit/framework/TestCase;->tearDown()V

    .line 71
    return-void
.end method
