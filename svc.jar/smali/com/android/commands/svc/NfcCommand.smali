.class public Lcom/android/commands/svc/NfcCommand;
.super Lcom/android/commands/svc/Svc$Command;
.source "NfcCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    const-string v0, "nfc"

    invoke-direct {p0, v0}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/commands/svc/NfcCommand;->shortHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nusage: svc nfc [enable|disable]\n         Turn NFC on or off.\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;

    .line 46
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 47
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 48
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 49
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/nfc/NfcManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcManager;

    .line 50
    .local v1, "nfcManager":Landroid/nfc/NfcManager;
    if-nez v1, :cond_0

    .line 51
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Got a null NfcManager, is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    return-void

    .line 54
    :cond_0
    invoke-virtual {v1}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 55
    .local v2, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v2, :cond_1

    .line 56
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Got a null NfcAdapter, is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    return-void

    .line 59
    :cond_1
    array-length v3, p1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    const-string v3, "enable"

    aget-object v6, p1, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 61
    return-void

    .line 62
    :cond_2
    array-length v3, p1

    if-ne v3, v4, :cond_3

    const-string v3, "disable"

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 63
    invoke-virtual {v2, v5}, Landroid/nfc/NfcAdapter;->disable(Z)Z

    .line 64
    return-void

    .line 66
    :cond_3
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/android/commands/svc/NfcCommand;->longHelp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "Control NFC functions"

    return-object v0
.end method
