.class Lcom/android/internal/telephony/uicc/UiccLog$1;
.super Ljava/lang/Object;
.source "UiccLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccLog;->log(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccLog;

.field final synthetic blacklist val$text:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccLog;Ljava/lang/String;)V
    .locals 0
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccLog$1;->this$0:Lcom/android/internal/telephony/uicc/UiccLog;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccLog$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccLog$1;->this$0:Lcom/android/internal/telephony/uicc/UiccLog;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccLog;->-$$Nest$mresetLogs(Lcom/android/internal/telephony/uicc/UiccLog;)V

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccLog$1;->this$0:Lcom/android/internal/telephony/uicc/UiccLog;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccLog$1;->val$text:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/uicc/UiccLog;->-$$Nest$minsert(Lcom/android/internal/telephony/uicc/UiccLog;Ljava/lang/String;)V

    return-void
.end method
