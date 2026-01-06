.class Lcom/android/internal/telephony/SemCarrierIdentifier$1;
.super Landroid/os/Handler;
.source "SemCarrierIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SemCarrierIdentifier;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemCarrierIdentifier;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$1;->this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleMessage] msg.what : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->i(Ljava/lang/String;)V

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "[handleMessage]- ex: "

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ContentValues;

    .line 146
    iget-object p0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$1;->this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;

    invoke-static {p0}, Lcom/android/internal/telephony/SemCarrierIdentifier;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/SemCarrierIdentifier;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$SecCarrier;->CONTENT_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 152
    const-string p0, "[handleMessage] update done"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$1;->this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;

    invoke-static {p0}, Lcom/android/internal/telephony/SemCarrierIdentifier;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/SemCarrierIdentifier;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/SemCarrierIdentifier$SecCarrier;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "method.init"

    const-string v1, "SemCarrierIdentifier"

    invoke-virtual {p0, p1, v0, v1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 138
    const-string p0, "[handleMessage] call done"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
