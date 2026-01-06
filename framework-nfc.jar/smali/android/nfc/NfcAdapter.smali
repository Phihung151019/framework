.class public final Landroid/nfc/NfcAdapter;
.super Ljava/lang/Object;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcAdapter$ServiceCallReturn;,
        Landroid/nfc/NfcAdapter$ServiceCall;,
        Landroid/nfc/NfcAdapter$ReaderCallback;,
        Landroid/nfc/NfcAdapter$OnTagRemovedListener;,
        Landroid/nfc/NfcAdapter$NfcUnlockHandler;,
        Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;,
        Landroid/nfc/NfcAdapter$WlcStateListener;,
        Landroid/nfc/NfcAdapter$NfcVendorNciCallback;,
        Landroid/nfc/NfcAdapter$MessageType;,
        Landroid/nfc/NfcAdapter$SendVendorNciStatus;,
        Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;,
        Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;,
        Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;,
        Landroid/nfc/NfcAdapter$TagIntentAppPreferenceResult;,
        Landroid/nfc/NfcAdapter$ListenTechnology;,
        Landroid/nfc/NfcAdapter$PollTechnology;,
        Landroid/nfc/NfcAdapter$AdapterState;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGED"

.field public static final whitelist ACTION_CHANGE_TAG_INTENT_PREFERENCE:Ljava/lang/String; = "android.nfc.action.CHANGE_TAG_INTENT_PREFERENCE"

.field public static final blacklist ACTION_HANDOVER_TRANSFER_DONE:Ljava/lang/String; = "android.nfc.action.HANDOVER_TRANSFER_DONE"

.field public static final blacklist ACTION_HANDOVER_TRANSFER_STARTED:Ljava/lang/String; = "android.nfc.action.HANDOVER_TRANSFER_STARTED"

.field public static final whitelist ACTION_NDEF_DISCOVERED:Ljava/lang/String; = "android.nfc.action.NDEF_DISCOVERED"

.field public static final whitelist ACTION_PREFERRED_PAYMENT_CHANGED:Ljava/lang/String; = "android.nfc.action.PREFERRED_PAYMENT_CHANGED"

.field public static final whitelist ACTION_REQUIRE_UNLOCK_FOR_NFC:Ljava/lang/String; = "android.nfc.action.REQUIRE_UNLOCK_FOR_NFC"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SHOW_NFC_RESOLVER:Ljava/lang/String; = "android.nfc.action.SHOW_NFC_RESOLVER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_TAG_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TAG_DISCOVERED"

.field public static final blacklist ACTION_TAG_LEFT_FIELD:Ljava/lang/String; = "android.nfc.action.TAG_LOST"

.field public static final whitelist ACTION_TECH_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TECH_DISCOVERED"

.field public static final whitelist ACTION_TRANSACTION_DETECTED:Ljava/lang/String; = "android.nfc.action.TRANSACTION_DETECTED"

.field public static final blacklist CONTROLLER_ALWAYS_ON_DISABLE:I = 0x0

.field public static final blacklist CONTROLLER_ALWAYS_ON_MODE_DEFAULT:I = 0x1

.field private static final blacklist DISABLE_POLLING_FLAGS:I = 0x1000

.field private static final blacklist ENABLE_POLLING_FLAGS:I = 0x0

.field public static final whitelist EXTRA_ADAPTER_STATE:Ljava/lang/String; = "android.nfc.extra.ADAPTER_STATE"

.field public static final whitelist EXTRA_AID:Ljava/lang/String; = "android.nfc.extra.AID"

.field public static final whitelist EXTRA_DATA:Ljava/lang/String; = "android.nfc.extra.DATA"

.field public static final blacklist EXTRA_HANDOVER_TRANSFER_STATUS:Ljava/lang/String; = "android.nfc.extra.HANDOVER_TRANSFER_STATUS"

.field public static final blacklist EXTRA_HANDOVER_TRANSFER_URI:Ljava/lang/String; = "android.nfc.extra.HANDOVER_TRANSFER_URI"

.field public static final whitelist EXTRA_ID:Ljava/lang/String; = "android.nfc.extra.ID"

.field public static final whitelist EXTRA_NDEF_MESSAGES:Ljava/lang/String; = "android.nfc.extra.NDEF_MESSAGES"

.field public static final whitelist EXTRA_PREFERRED_PAYMENT_CHANGED_REASON:Ljava/lang/String; = "android.nfc.extra.PREFERRED_PAYMENT_CHANGED_REASON"

.field public static final whitelist EXTRA_READER_PRESENCE_CHECK_DELAY:Ljava/lang/String; = "presence"

.field public static final blacklist EXTRA_READER_TECH_A_POLLING_LOOP_ANNOTATION:Ljava/lang/String; = "android.nfc.extra.READER_TECH_A_POLLING_LOOP_ANNOTATION"

.field public static final whitelist EXTRA_RESOLVE_INFOS:Ljava/lang/String; = "android.nfc.extra.RESOLVE_INFOS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SECURE_ELEMENT_NAME:Ljava/lang/String; = "android.nfc.extra.SECURE_ELEMENT_NAME"

.field public static final whitelist EXTRA_TAG:Ljava/lang/String; = "android.nfc.extra.TAG"

.field public static final whitelist FLAG_LISTEN_DISABLE:I = 0x0

.field public static final whitelist FLAG_LISTEN_KEEP:I = -0x80000000

.field public static final whitelist FLAG_LISTEN_NFC_PASSIVE_A:I = 0x1

.field public static final whitelist FLAG_LISTEN_NFC_PASSIVE_B:I = 0x2

.field public static final whitelist FLAG_LISTEN_NFC_PASSIVE_F:I = 0x4

.field public static final greylist FLAG_NDEF_PUSH_NO_CONFIRM:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_READER_DISABLE:I = 0x0

.field public static final whitelist FLAG_READER_KEEP:I = -0x80000000

.field public static final whitelist FLAG_READER_NFC_A:I = 0x1

.field public static final whitelist FLAG_READER_NFC_B:I = 0x2

.field public static final whitelist FLAG_READER_NFC_BARCODE:I = 0x10

.field public static final whitelist FLAG_READER_NFC_F:I = 0x4

.field public static final whitelist FLAG_READER_NFC_V:I = 0x8

.field public static final whitelist FLAG_READER_NO_PLATFORM_SOUNDS:I = 0x100

.field public static final whitelist FLAG_READER_SKIP_NDEF_CHECK:I = 0x80

.field public static final whitelist FLAG_SET_DEFAULT_TECH:I = 0x40000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FLAG_USE_ALL_TECH:I = 0xff

.field public static final blacklist HANDOVER_TRANSFER_STATUS_FAILURE:I = 0x1

.field public static final blacklist HANDOVER_TRANSFER_STATUS_SUCCESS:I = 0x0

.field public static final whitelist MESSAGE_TYPE_COMMAND:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREFERRED_PAYMENT_CHANGED:I = 0x2

.field public static final whitelist PREFERRED_PAYMENT_LOADED:I = 0x1

.field public static final whitelist PREFERRED_PAYMENT_UPDATED:I = 0x3

.field public static final whitelist SEND_VENDOR_NCI_STATUS_FAILED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SEND_VENDOR_NCI_STATUS_MESSAGE_CORRUPTED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SEND_VENDOR_NCI_STATUS_REJECTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SEND_VENDOR_NCI_STATUS_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATE_OFF:I = 0x1

.field public static final whitelist STATE_ON:I = 0x3

.field public static final whitelist STATE_TURNING_OFF:I = 0x4

.field public static final whitelist STATE_TURNING_ON:I = 0x2

.field static final blacklist TAG:Ljava/lang/String; = "NFC"

.field public static final whitelist TAG_INTENT_APP_PREF_RESULT_PACKAGE_NOT_FOUND:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TAG_INTENT_APP_PREF_RESULT_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TAG_INTENT_APP_PREF_RESULT_UNAVAILABLE:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field static blacklist sCardEmulationService:Landroid/nfc/INfcCardEmulation;

.field static blacklist sHasCeFeature:Z

.field static blacklist sHasNfcFeature:Z

.field static blacklist sHasNfcWlcFeature:Z

.field static blacklist sIsInitialized:Z

.field static blacklist sLock:Ljava/lang/Object;

.field static blacklist sNdefNfceeService:Landroid/nfc/IT4tNdefNfcee;

.field static blacklist sNfcAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Landroid/nfc/NfcAdapter;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;

.field static blacklist sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

.field static greylist sService:Landroid/nfc/INfcAdapter;

.field static blacklist sServiceRegisterer:Landroid/nfc/NfcServiceManager$ServiceRegisterer;

.field static blacklist sTagService:Landroid/nfc/INfcTag;


# instance fields
.field final blacklist mContext:Landroid/content/Context;

.field private final blacklist mControllerAlwaysOnListener:Landroid/nfc/NfcControllerAlwaysOnListener;

.field final blacklist mLock:Ljava/lang/Object;

.field final blacklist mNfcActivityManager:Landroid/nfc/NfcActivityManager;

.field final blacklist mNfcOemExtension:Landroid/nfc/NfcOemExtension;

.field final blacklist mNfcUnlockHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/nfc/NfcAdapter$NfcUnlockHandler;",
            "Landroid/nfc/INfcUnlockHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNfcVendorNciCallbackListener:Landroid/nfc/NfcVendorNciCallbackListener;

.field private final blacklist mNfcWlcStateListener:Landroid/nfc/NfcWlcStateListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$6DT39qJGv949homBtgOtbz-38G8(Landroid/nfc/NfcAdapter;)Landroid/nfc/INfcAdapterExtras;
    .locals 0

    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->lambda$getNfcAdapterExtrasInterface$28()Landroid/nfc/INfcAdapterExtras;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$7aV7DMJxcYrtdk4DdAgtEXXQJA0(Landroid/nfc/NfcAdapter;Landroid/os/Binder;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcAdapter;->lambda$setDiscoveryTechnology$15(Landroid/os/Binder;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7cY3tyTT5tMVK0kt6VlAWf_IQxg(Landroid/nfc/NfcAdapter;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->lambda$disable$4()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ChHsu3zyyl-fmMSV4W6nAmsvLKQ(Landroid/nfc/NfcAdapter;Landroid/os/Binder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/nfc/NfcAdapter;->lambda$setReaderModePollingEnabled$14(Landroid/os/Binder;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LXrlJ5RhahlcpDx1goXMQ3XxOL8(Landroid/nfc/NfcAdapter;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->lambda$isTagIntentAllowed$43()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$LhDJIn4mUccxc_shS11UoZUVmpA(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/nfc/NfcAdapter;->lambda$addNfcUnlockHandler$25(Landroid/nfc/NfcAdapter$NfcUnlockHandler;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$W7M_a938atinjG63TVxtBEVvnao(Landroid/nfc/NfcAdapter;Z)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Landroid/nfc/NfcAdapter;->lambda$disable$5(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ZJwSosRDEA1WAACgn2avgBMCISI(Landroid/nfc/NfcAdapter;)Landroid/nfc/INfcDta;
    .locals 0

    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->lambda$getNfcDtaInterface$0()Landroid/nfc/INfcDta;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$_fsUKW3G303OkW1Z-vmHcYGHEqs(Landroid/nfc/NfcAdapter;Landroid/nfc/INfcUnlockHandler$Stub;[Ljava/lang/String;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcAdapter;->lambda$addNfcUnlockHandler$26(Landroid/nfc/INfcUnlockHandler$Stub;[Ljava/lang/String;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$aQoitMmu4AqU-P1SlL9iRUvIH1g(Landroid/nfc/NfcAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/nfc/NfcAdapter;->lambda$indicateDataMigration$42(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$li_RGu2fRD9ZdRFSzpq9of5N_ec(Landroid/nfc/NfcAdapter;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->lambda$enable$3()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$o7TtXsmjBfuKIFG0Bk9qHHO0rJ8(Landroid/nfc/NfcAdapter;Z)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Landroid/nfc/NfcAdapter;->lambda$enableReaderOption$20(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$qfd255Za4FwiXBomdBTLZz-cEF4(Landroid/nfc/NfcAdapter;Z)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Landroid/nfc/NfcAdapter;->lambda$setObserveModeEnabled$10(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$wDxTKZWXXEo55yiubbsVrCPjV5Q(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Landroid/nfc/NfcAdapter;->lambda$removeNfcUnlockHandler$27(Landroid/nfc/NfcAdapter$NfcUnlockHandler;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 588
    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    .line 593
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    .line 611
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 940
    iput-object p1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    .line 941
    new-instance v0, Landroid/nfc/NfcActivityManager;

    invoke-direct {v0, p0}, Landroid/nfc/NfcActivityManager;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    .line 942
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    .line 943
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    .line 944
    new-instance v0, Landroid/nfc/NfcControllerAlwaysOnListener;

    invoke-direct {v0}, Landroid/nfc/NfcControllerAlwaysOnListener;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mControllerAlwaysOnListener:Landroid/nfc/NfcControllerAlwaysOnListener;

    .line 945
    new-instance v0, Landroid/nfc/NfcWlcStateListener;

    invoke-static {}, Landroid/nfc/NfcAdapter;->getService()Landroid/nfc/INfcAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/nfc/NfcWlcStateListener;-><init>(Landroid/nfc/INfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcWlcStateListener:Landroid/nfc/NfcWlcStateListener;

    .line 946
    new-instance v0, Landroid/nfc/NfcVendorNciCallbackListener;

    invoke-direct {v0}, Landroid/nfc/NfcVendorNciCallbackListener;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcVendorNciCallbackListener:Landroid/nfc/NfcVendorNciCallbackListener;

    .line 947
    new-instance v0, Landroid/nfc/NfcOemExtension;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/nfc/NfcOemExtension;-><init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcOemExtension:Landroid/nfc/NfcOemExtension;

    .line 948
    return-void
.end method

.method public static greylist attemptDeadServiceRecovery(Landroid/os/RemoteException;)V
    .locals 5
    .param p0, "e"    # Landroid/os/RemoteException;

    .line 1015
    const-string v0, "NFC service dead - attempting to recover"

    const-string v1, "NFC"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1016
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v0

    .line 1017
    .local v0, "service":Landroid/nfc/INfcAdapter;
    if-nez v0, :cond_0

    .line 1018
    const-string v2, "could not retrieve NFC service during service recovery"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1025
    :cond_0
    sput-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 1026
    sget-boolean v2, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1028
    :try_start_0
    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    goto :goto_0

    .line 1029
    :catch_0
    move-exception v2

    .line 1030
    .local v2, "ee":Landroid/os/RemoteException;
    sput-object v3, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;

    .line 1031
    const-string v4, "could not retrieve NFC tag service during service recovery"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1038
    .end local v2    # "ee":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    sget-boolean v2, Landroid/nfc/NfcAdapter;->sHasCeFeature:Z

    if-eqz v2, :cond_2

    .line 1040
    :try_start_1
    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1045
    goto :goto_1

    .line 1041
    :catch_1
    move-exception v2

    .line 1042
    .restart local v2    # "ee":Landroid/os/RemoteException;
    sput-object v3, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;

    .line 1043
    const-string v4, "could not retrieve NFC card emulation service during service recovery"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    .end local v2    # "ee":Landroid/os/RemoteException;
    :goto_1
    :try_start_2
    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1053
    goto :goto_2

    .line 1049
    :catch_2
    move-exception v2

    .line 1050
    .restart local v2    # "ee":Landroid/os/RemoteException;
    sput-object v3, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;

    .line 1051
    const-string v4, "could not retrieve NFC-F card emulation service during service recovery"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    .end local v2    # "ee":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    :try_start_3
    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getT4tNdefNfceeInterface()Landroid/nfc/IT4tNdefNfcee;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sNdefNfceeService:Landroid/nfc/IT4tNdefNfcee;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1061
    nop

    .line 1062
    return-void

    .line 1057
    :catch_3
    move-exception v2

    .line 1058
    .restart local v2    # "ee":Landroid/os/RemoteException;
    sput-object v3, Landroid/nfc/NfcAdapter;->sNdefNfceeService:Landroid/nfc/IT4tNdefNfcee;

    .line 1059
    const-string v3, "could not retrieve NDEF NFCEE service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public static blacklist callService(Landroid/nfc/NfcAdapter$ServiceCall;)V
    .locals 2
    .param p0, "call"    # Landroid/nfc/NfcAdapter$ServiceCall;

    .line 2591
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    if-nez v0, :cond_0

    .line 2592
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "NFC Service is null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Landroid/os/RemoteException;)V

    .line 2594
    :cond_0
    invoke-interface {p0}, Landroid/nfc/NfcAdapter$ServiceCall;->call()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2602
    goto :goto_0

    .line 2595
    :catch_0
    move-exception v0

    .line 2596
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Landroid/os/RemoteException;)V

    .line 2598
    :try_start_1
    invoke-interface {p0}, Landroid/nfc/NfcAdapter$ServiceCall;->call()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2601
    goto :goto_0

    .line 2599
    :catch_1
    move-exception v1

    .line 2600
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2603
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/nfc/NfcAdapter$ServiceCallReturn<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 2611
    .local p0, "call":Landroid/nfc/NfcAdapter$ServiceCallReturn;, "Landroid/nfc/NfcAdapter$ServiceCallReturn<TT;>;"
    .local p1, "defaultReturn":Ljava/lang/Object;, "TT;"
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    if-nez v0, :cond_0

    .line 2612
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "NFC Service is null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Landroid/os/RemoteException;)V

    .line 2614
    :cond_0
    invoke-interface {p0}, Landroid/nfc/NfcAdapter$ServiceCallReturn;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2615
    :catch_0
    move-exception v0

    .line 2616
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Landroid/os/RemoteException;)V

    .line 2619
    :try_start_1
    invoke-interface {p0}, Landroid/nfc/NfcAdapter$ServiceCallReturn;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 2620
    :catch_1
    move-exception v1

    .line 2621
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2624
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    return-object p1
.end method

.method public static blacklist getCardEmulationService()Landroid/nfc/INfcCardEmulation;
    .locals 1

    .line 982
    invoke-static {}, Landroid/nfc/NfcAdapter;->isEnabledStatic()Z

    .line 983
    sget-object v0, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;

    return-object v0
.end method

.method public static greylist getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 933
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "NFC"

    const-string v2, "WARNING: NfcAdapter.getDefaultAdapter() is deprecated, use NfcAdapter.getDefaultAdapter(Context) instead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 891
    if-eqz p0, :cond_5

    .line 894
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 895
    if-eqz p0, :cond_4

    .line 899
    invoke-static {}, Landroid/nfc/NfcAdapter;->retrieveServiceRegisterer()V

    .line 900
    sget-object v0, Landroid/nfc/NfcAdapter;->sServiceRegisterer:Landroid/nfc/NfcServiceManager$ServiceRegisterer;

    invoke-virtual {v0}, Landroid/nfc/NfcServiceManager$ServiceRegisterer;->tryGet()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 901
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    if-eqz v0, :cond_1

    .line 902
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 904
    :try_start_0
    sget-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    sput-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    .line 905
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 907
    :cond_1
    :goto_0
    return-object v1

    .line 910
    :cond_2
    const-string v0, "nfc"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 911
    .local v0, "manager":Landroid/nfc/NfcManager;
    if-nez v0, :cond_3

    .line 913
    return-object v1

    .line 915
    :cond_3
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    return-object v1

    .line 896
    .end local v0    # "manager":Landroid/nfc/NfcManager;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context not associated with any application (using a mock context?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 892
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist getNdefNfceeService()Landroid/nfc/IT4tNdefNfcee;
    .locals 1

    .line 644
    sget-object v0, Landroid/nfc/NfcAdapter;->sNdefNfceeService:Landroid/nfc/IT4tNdefNfcee;

    return-object v0
.end method

.method public static declared-synchronized greylist getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 798
    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 799
    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_0

    .line 800
    new-instance v2, Landroid/nfc/NfcAdapter;

    invoke-direct {v2, v1}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 802
    :cond_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 804
    :cond_1
    :try_start_1
    sget-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    if-nez v2, :cond_9

    .line 806
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 807
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "android.hardware.nfc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    .line 808
    const-string v3, "android.hardware.nfc.hce"

    .line 809
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    const-string v3, "android.hardware.nfc.hcef"

    .line 810
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.hardware.nfc.uicc"

    .line 811
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.hardware.nfc.ese"

    .line 812
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v4

    :goto_1
    sput-boolean v3, Landroid/nfc/NfcAdapter;->sHasCeFeature:Z

    .line 813
    const-string v3, "android.hardware.nfc.charging"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Landroid/nfc/NfcAdapter;->sHasNfcWlcFeature:Z

    .line 815
    sget-boolean v3, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v3, :cond_5

    sget-boolean v3, Landroid/nfc/NfcAdapter;->sHasCeFeature:Z

    if-nez v3, :cond_5

    sget-boolean v3, Landroid/nfc/NfcAdapter;->sHasNfcWlcFeature:Z

    if-eqz v3, :cond_4

    goto :goto_2

    .line 816
    :cond_4
    const-string v1, "NFC"

    const-string v3, "this device does not have NFC support"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 819
    :cond_5
    :goto_2
    invoke-static {}, Landroid/nfc/NfcAdapter;->retrieveServiceRegisterer()V

    .line 820
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v3

    sput-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 821
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    if-eqz v3, :cond_8

    .line 825
    sget-boolean v3, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_6

    .line 827
    :try_start_2
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v3

    sput-object v3, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 832
    goto :goto_3

    .line 828
    :catch_0
    move-exception v3

    .line 829
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    sput-object v1, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;

    .line 830
    const-string v1, "NFC"

    const-string v4, "could not retrieve NFC Tag service"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 834
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_3
    sget-boolean v3, Landroid/nfc/NfcAdapter;->sHasCeFeature:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_7

    .line 836
    :try_start_4
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v3

    sput-object v3, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 841
    nop

    .line 843
    :try_start_5
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v3

    sput-object v3, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 848
    goto :goto_4

    .line 844
    :catch_1
    move-exception v3

    .line 845
    .restart local v3    # "e":Landroid/os/RemoteException;
    :try_start_6
    sput-object v1, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;

    .line 846
    const-string v1, "NFC"

    const-string v4, "could not retrieve card emulation service"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 837
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v3

    .line 838
    .restart local v3    # "e":Landroid/os/RemoteException;
    sput-object v1, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;

    .line 839
    const-string v1, "NFC"

    const-string v4, "could not retrieve NFC-F card emulation service"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 851
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_7
    :goto_4
    :try_start_7
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getT4tNdefNfceeInterface()Landroid/nfc/IT4tNdefNfcee;

    move-result-object v3

    sput-object v3, Landroid/nfc/NfcAdapter;->sNdefNfceeService:Landroid/nfc/IT4tNdefNfcee;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 856
    nop

    .line 857
    :try_start_8
    sput-boolean v4, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    goto :goto_5

    .line 852
    :catch_3
    move-exception v3

    .line 853
    .restart local v3    # "e":Landroid/os/RemoteException;
    sput-object v1, Landroid/nfc/NfcAdapter;->sNdefNfceeService:Landroid/nfc/IT4tNdefNfcee;

    .line 854
    const-string v1, "NFC"

    const-string v4, "could not retrieve NDEF NFCEE service"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 822
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_8
    const-string v1, "NFC"

    const-string v3, "could not retrieve NFC service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 859
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_9
    :goto_5
    sget-object v1, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcAdapter;

    .line 860
    .local v1, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v1, :cond_a

    .line 861
    new-instance v2, Landroid/nfc/NfcAdapter;

    invoke-direct {v2, p0}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 862
    sget-object v2, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 864
    :cond_a
    monitor-exit v0

    return-object v1

    .line 797
    .end local v1    # "adapter":Landroid/nfc/NfcAdapter;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method

.method public static blacklist getNfcFCardEmulationService()Landroid/nfc/INfcFCardEmulation;
    .locals 1

    .line 991
    invoke-static {}, Landroid/nfc/NfcAdapter;->isEnabledStatic()Z

    .line 992
    sget-object v0, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;

    return-object v0
.end method

.method public static greylist getService()Landroid/nfc/INfcAdapter;
    .locals 1

    .line 964
    invoke-static {}, Landroid/nfc/NfcAdapter;->isEnabledStatic()Z

    .line 965
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    return-object v0
.end method

.method private static blacklist getServiceInterface()Landroid/nfc/INfcAdapter;
    .locals 2

    .line 870
    sget-object v0, Landroid/nfc/NfcAdapter;->sServiceRegisterer:Landroid/nfc/NfcServiceManager$ServiceRegisterer;

    invoke-virtual {v0}, Landroid/nfc/NfcServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 871
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 872
    const/4 v1, 0x0

    return-object v1

    .line 874
    :cond_0
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getTagService()Landroid/nfc/INfcTag;
    .locals 1

    .line 973
    invoke-static {}, Landroid/nfc/NfcAdapter;->isEnabledStatic()Z

    .line 974
    sget-object v0, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;

    return-object v0
.end method

.method private static blacklist isCardEmulationEnabled()Z
    .locals 2

    .line 1065
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasCeFeature:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1066
    sget-object v0, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;

    if-nez v0, :cond_0

    sget-object v0, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1068
    :cond_2
    return v1
.end method

.method private static blacklist isEnabledStatic()Z
    .locals 3

    .line 1079
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda32;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1080
    .local v0, "serviceState":Z
    if-eqz v0, :cond_1

    .line 1081
    invoke-static {}, Landroid/nfc/NfcAdapter;->isTagReadingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/nfc/NfcAdapter;->isCardEmulationEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/nfc/NfcAdapter;->sHasNfcWlcFeature:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1080
    :goto_0
    return v1
.end method

.method private static blacklist isTagReadingEnabled()Z
    .locals 2

    .line 1072
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1073
    sget-object v0, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1075
    :cond_1
    return v1
.end method

.method private synthetic blacklist lambda$addNfcUnlockHandler$25(Landroid/nfc/NfcAdapter$NfcUnlockHandler;)V
    .locals 2
    .param p1, "unlockHandler"    # Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2273
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/INfcUnlockHandler;

    invoke-interface {v0, v1}, Landroid/nfc/INfcAdapter;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    .line 2274
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2275
    return-void
.end method

.method private synthetic blacklist lambda$addNfcUnlockHandler$26(Landroid/nfc/INfcUnlockHandler$Stub;[Ljava/lang/String;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "iHandler"    # Landroid/nfc/INfcUnlockHandler$Stub;
    .param p2, "tagTechnologies"    # [Ljava/lang/String;
    .param p3, "unlockHandler"    # Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2285
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 2286
    invoke-static {p2}, Landroid/nfc/Tag;->getTechCodesFromStrings([Ljava/lang/String;)[I

    move-result-object v1

    .line 2285
    invoke-interface {v0, p1, v1}, Landroid/nfc/INfcAdapter;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    .line 2287
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2288
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$disable$4()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1168
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Landroid/nfc/INfcAdapter;->disable(ZLjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$disable$5(Z)Ljava/lang/Boolean;
    .locals 2
    .param p1, "persist"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1180
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/nfc/INfcAdapter;->disable(ZLjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$disableForegroundDispatch$13()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1710
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatch$24(Landroid/nfc/Tag;)V
    .locals 1
    .param p0, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2236
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0}, Landroid/nfc/INfcAdapter;->dispatch(Landroid/nfc/Tag;)V

    return-void
.end method

.method private synthetic blacklist lambda$enable$3()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1141
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/nfc/INfcAdapter;->enable(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$enableForegroundDispatch$12(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    .locals 1
    .param p0, "intent"    # Landroid/app/PendingIntent;
    .param p1, "filters"    # [Landroid/content/IntentFilter;
    .param p2, "parcel"    # Landroid/nfc/TechListParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1686
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0, p1, p2}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    return-void
.end method

.method private synthetic blacklist lambda$enableReaderOption$20(Z)Ljava/lang/Boolean;
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2065
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/nfc/INfcAdapter;->enableReaderOption(ZLjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$enableSecureNfc$16(Z)Ljava/lang/Boolean;
    .locals 1
    .param p0, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1992
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0}, Landroid/nfc/INfcAdapter;->setNfcSecure(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getAdapterState$2()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1116
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getNfcAdapterExtrasInterface$28()Landroid/nfc/INfcAdapterExtras;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2333
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/nfc/INfcAdapter;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getNfcAntennaInfo$18()Landroid/nfc/NfcAntennaInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2028
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getNfcAntennaInfo()Landroid/nfc/NfcAntennaInfo;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getNfcDtaInterface$0()Landroid/nfc/INfcDta;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1004
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/nfc/INfcAdapter;->getNfcDtaInterface(Ljava/lang/String;)Landroid/nfc/INfcDta;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getTagIntentAppPreferenceForUser$33(I)Ljava/util/Map;
    .locals 1
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2540
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0}, Landroid/nfc/INfcAdapter;->getTagIntentAppPreferenceForUser(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getWlcListenerDeviceInfo$40()Landroid/nfc/WlcListenerDeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2745
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getWlcListenerDeviceInfo()Landroid/nfc/WlcListenerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$ignore$23(Landroid/nfc/Tag;ILandroid/nfc/ITagRemovedCallback$Stub;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "tag"    # Landroid/nfc/Tag;
    .param p1, "debounceMs"    # I
    .param p2, "passedListener"    # Landroid/nfc/ITagRemovedCallback$Stub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2222
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcAdapter;->ignore(IILandroid/nfc/ITagRemovedCallback;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$indicateDataMigration$42(Z)V
    .locals 2
    .param p1, "inProgress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2914
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/nfc/INfcAdapter;->indicateDataMigration(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$isControllerAlwaysOn$30()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2408
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isControllerAlwaysOn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isControllerAlwaysOnSupported$31()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2428
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isControllerAlwaysOnSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isEnabledStatic$1()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1079
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isObserveModeEnabled$9()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1230
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isObserveModeEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isObserveModeSupported$8()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1220
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isObserveModeSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isReaderModeAnnotationSupported$7()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1208
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isReaderModeAnnotationSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isReaderOptionEnabled$22()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2097
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isReaderOptionEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isReaderOptionSupported$21()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2080
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isReaderOptionSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isSecureNfcEnabled$19()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2047
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isNfcSecureEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isSecureNfcSupported$17()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2009
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->deviceSupportsNfcSecure()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$isTagIntentAllowed$43()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2966
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2967
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 2966
    invoke-interface {v0, v1, v2}, Landroid/nfc/INfcAdapter;->isTagIntentAllowed(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isTagIntentAppPreferenceSupported$34()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2559
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isTagIntentAppPreferenceSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isWlcEnabled$39()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2665
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isWlcEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$notifyHceDeactivated$37()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2634
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->notifyHceDeactivated()V

    return-void
.end method

.method static synthetic blacklist lambda$notifyPollingLoop$35(Landroid/nfc/cardemulation/PollingFrame;)V
    .locals 1
    .param p0, "pollingFrame"    # Landroid/nfc/cardemulation/PollingFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2571
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0}, Landroid/nfc/INfcAdapter;->notifyPollingLoop(Landroid/nfc/cardemulation/PollingFrame;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTestHceData$36(I[B)V
    .locals 1
    .param p0, "technology"    # I
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2581
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0, p1}, Landroid/nfc/INfcAdapter;->notifyTestHceData(I[B)V

    return-void
.end method

.method static synthetic blacklist lambda$pausePolling$6(I)V
    .locals 3
    .param p0, "timeoutInMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1192
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    int-to-long v1, p0

    invoke-interface {v0, v1, v2}, Landroid/nfc/INfcAdapter;->pausePolling(J)I

    return-void
.end method

.method private synthetic blacklist lambda$removeNfcUnlockHandler$27(Landroid/nfc/NfcAdapter$NfcUnlockHandler;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "unlockHandler"    # Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2315
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/INfcUnlockHandler;

    invoke-interface {v0, v1}, Landroid/nfc/INfcAdapter;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    .line 2316
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$resumePolling$11()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1264
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->resumePolling()I

    return-void
.end method

.method static synthetic blacklist lambda$sendVendorNciMessage$41(III[B)Ljava/lang/Integer;
    .locals 1
    .param p0, "mt"    # I
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2831
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/nfc/INfcAdapter;->sendVendorNciMessage(III[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$setControllerAlwaysOn$29(I)V
    .locals 1
    .param p0, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2388
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0}, Landroid/nfc/INfcAdapter;->setControllerAlwaysOn(I)V

    return-void
.end method

.method private synthetic blacklist lambda$setDiscoveryTechnology$15(Landroid/os/Binder;II)V
    .locals 2
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "pollTechnology"    # I
    .param p3, "listenTechnology"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1856
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    .line 1857
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1856
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/nfc/INfcAdapter;->updateDiscoveryTechnology(Landroid/os/IBinder;IILjava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$setObserveModeEnabled$10(Z)Ljava/lang/Boolean;
    .locals 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1254
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/nfc/INfcAdapter;->setObserveMode(ZLjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$setReaderModePollingEnabled$14(Landroid/os/Binder;I)V
    .locals 6
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1791
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    .line 1792
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1791
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move v3, p2

    .end local p1    # "token":Landroid/os/Binder;
    .end local p2    # "flags":I
    .local v1, "token":Landroid/os/Binder;
    .local v3, "flags":I
    invoke-interface/range {v0 .. v5}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$setTagIntentAppPreferenceForUser$32(ILjava/lang/String;Z)Ljava/lang/Integer;
    .locals 1
    .param p0, "userId"    # I
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2500
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0, p1, p2}, Landroid/nfc/INfcAdapter;->setTagIntentAppPreferenceForUser(ILjava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$setWlcEnabled$38(Z)Ljava/lang/Boolean;
    .locals 1
    .param p0, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2650
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0}, Landroid/nfc/INfcAdapter;->setWlcEnabled(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist retrieveServiceRegisterer()V
    .locals 3

    .line 781
    sget-object v0, Landroid/nfc/NfcAdapter;->sServiceRegisterer:Landroid/nfc/NfcServiceManager$ServiceRegisterer;

    if-nez v0, :cond_1

    .line 782
    invoke-static {}, Landroid/nfc/NfcFrameworkInitializer;->getNfcServiceManager()Landroid/nfc/NfcServiceManager;

    move-result-object v0

    .line 783
    .local v0, "manager":Landroid/nfc/NfcServiceManager;
    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {v0}, Landroid/nfc/NfcServiceManager;->getNfcManagerServiceRegisterer()Landroid/nfc/NfcServiceManager$ServiceRegisterer;

    move-result-object v1

    sput-object v1, Landroid/nfc/NfcAdapter;->sServiceRegisterer:Landroid/nfc/NfcServiceManager$ServiceRegisterer;

    goto :goto_0

    .line 784
    :cond_0
    const-string v1, "NFC"

    const-string v2, "NfcServiceManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 789
    .end local v0    # "manager":Landroid/nfc/NfcServiceManager;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist addNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "unlockHandler"    # Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .param p2, "tagTechnologies"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2258
    sget-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2259
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_2

    .line 2262
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2264
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2265
    return v1

    .line 2269
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2270
    :try_start_2
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2272
    new-instance v2, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda10;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)V

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 2278
    :cond_1
    new-instance v2, Landroid/nfc/NfcAdapter$2;

    invoke-direct {v2, p0, p1}, Landroid/nfc/NfcAdapter$2;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)V

    .line 2284
    .local v2, "iHandler":Landroid/nfc/INfcUnlockHandler$Stub;
    new-instance v3, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v2, p2, p1}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda11;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/INfcUnlockHandler$Stub;[Ljava/lang/String;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)V

    .line 2289
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2284
    invoke-static {v3, v4}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    monitor-exit v0

    return v3

    .line 2290
    .end local v2    # "iHandler":Landroid/nfc/INfcUnlockHandler$Stub;
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .end local p2    # "tagTechnologies":[Ljava/lang/String;
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2291
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .restart local p2    # "tagTechnologies":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2292
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "NFC"

    const-string v3, "Unable to register LockscreenDispatch"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2293
    return v1

    .line 2260
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :try_start_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .end local p2    # "tagTechnologies":[Ljava/lang/String;
    throw v1

    .line 2262
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .restart local p2    # "tagTechnologies":[Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public whitelist disable()Z
    .locals 2

    .line 1168
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda9;-><init>(Landroid/nfc/NfcAdapter;)V

    .line 1169
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1168
    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist disable(Z)Z
    .locals 2
    .param p1, "persist"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1180
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/nfc/NfcAdapter;Z)V

    .line 1181
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1180
    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist disableForegroundDispatch(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1705
    sget-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1706
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_0

    .line 1709
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1710
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda29;-><init>()V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 1711
    return-void

    .line 1707
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    throw v1

    .line 1709
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public greylist disableForegroundNdefPush(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1973
    sget-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1974
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_0

    .line 1977
    monitor-exit v0

    .line 1978
    return-void

    .line 1975
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    throw v1

    .line 1977
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist disableNdefPush()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2124
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist disableReaderMode(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1754
    sget-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1755
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_0

    .line 1758
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1759
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcActivityManager;->disableReaderMode(Landroid/app/Activity;)V

    .line 1760
    return-void

    .line 1756
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    throw v1

    .line 1758
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist dispatch(Landroid/nfc/Tag;)V
    .locals 2
    .param p1, "tag"    # Landroid/nfc/Tag;

    .line 2233
    if-eqz p1, :cond_0

    .line 2236
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda33;

    invoke-direct {v0, p1}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda33;-><init>(Landroid/nfc/Tag;)V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 2237
    return-void

    .line 2234
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist enable()Z
    .locals 2

    .line 1141
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda41;-><init>(Landroid/nfc/NfcAdapter;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "filters"    # [Landroid/content/IntentFilter;
    .param p4, "techLists"    # [[Ljava/lang/String;

    .line 1675
    sget-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1676
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_2

    .line 1679
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1680
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1683
    if-eqz p4, :cond_0

    array-length v0, p4

    if-lez v0, :cond_0

    .line 1684
    new-instance v0, Landroid/nfc/TechListParcel;

    invoke-direct {v0, p4}, Landroid/nfc/TechListParcel;-><init>([[Ljava/lang/String;)V

    goto :goto_0

    .line 1685
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 1686
    .local v0, "parcel":Landroid/nfc/TechListParcel;
    new-instance v1, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda18;

    invoke-direct {v1, p2, p3, v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda18;-><init>(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 1687
    return-void

    .line 1681
    .end local v0    # "parcel":Landroid/nfc/TechListParcel;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1677
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "intent":Landroid/app/PendingIntent;
    .end local p3    # "filters":[Landroid/content/IntentFilter;
    .end local p4    # "techLists":[[Ljava/lang/String;
    throw v1

    .line 1679
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    .restart local p2    # "intent":Landroid/app/PendingIntent;
    .restart local p3    # "filters":[Landroid/content/IntentFilter;
    .restart local p4    # "techLists":[[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public greylist enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Landroid/nfc/NdefMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1943
    sget-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1944
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_0

    .line 1947
    monitor-exit v0

    .line 1948
    return-void

    .line 1945
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "message":Landroid/nfc/NdefMessage;
    throw v1

    .line 1947
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    .restart local p2    # "message":Landroid/nfc/NdefMessage;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist enableNdefPush()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2111
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$ReaderCallback;
    .param p3, "flags"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1737
    sget-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1738
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_0

    .line 1741
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1742
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/nfc/NfcActivityManager;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    .line 1743
    return-void

    .line 1739
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "callback":Landroid/nfc/NfcAdapter$ReaderCallback;
    .end local p3    # "flags":I
    .end local p4    # "extras":Landroid/os/Bundle;
    throw v1

    .line 1741
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    .restart local p2    # "callback":Landroid/nfc/NfcAdapter$ReaderCallback;
    .restart local p3    # "flags":I
    .restart local p4    # "extras":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist enableReaderOption(Z)Z
    .locals 2
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2061
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v0, :cond_0

    .line 2064
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda22;-><init>(Landroid/nfc/NfcAdapter;Z)V

    .line 2065
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2064
    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 2062
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist enableSecureNfc(Z)Z
    .locals 2
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1989
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasCeFeature:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1990
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1992
    :cond_1
    :goto_0
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda19;-><init>(Z)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist enforceResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 2341
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2344
    return-void

    .line 2342
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "API cannot be called while activity is paused"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAdapterState()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1116
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda40;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public greylist getContext()Landroid/content/Context;
    .locals 1

    .line 955
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public greylist-max-r getNfcAdapterExtrasInterface()Landroid/nfc/INfcAdapterExtras;
    .locals 2

    .line 2328
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2332
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda20;-><init>(Landroid/nfc/NfcAdapter;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/INfcAdapterExtras;

    return-object v0

    .line 2329
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You need a context on NfcAdapter to use the  NFC extras APIs"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getNfcAntennaInfo()Landroid/nfc/NfcAntennaInfo;
    .locals 2

    .line 2025
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasCeFeature:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2026
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2028
    :cond_1
    :goto_0
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda36;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcAntennaInfo;

    return-object v0
.end method

.method public blacklist getNfcDtaInterface()Landroid/nfc/INfcDta;
    .locals 2

    .line 1000
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1004
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda25;-><init>(Landroid/nfc/NfcAdapter;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/INfcDta;

    return-object v0

    .line 1001
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You need a context on NfcAdapter to use the  NFC extras APIs"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getNfcOemExtension()Landroid/nfc/NfcOemExtension;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2924
    sget-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2925
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_0

    .line 2928
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2929
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcOemExtension:Landroid/nfc/NfcOemExtension;

    return-object v0

    .line 2926
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    throw v1

    .line 2928
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist getSdkVersion()I
    .locals 1

    .line 2350
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2351
    const/16 v0, 0x9

    return v0

    .line 2353
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v0
.end method

.method public blacklist getSupportedOffHostSecureElements()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 761
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 765
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 766
    .local v0, "offHostSE":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 767
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_0

    .line 768
    const-string v2, "NFC"

    const-string v3, "Cannot get package manager, assuming no off-host CE feature"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    return-object v0

    .line 771
    :cond_0
    const-string v2, "android.hardware.nfc.uicc"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 772
    const-string v2, "SIM"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    :cond_1
    const-string v2, "android.hardware.nfc.ese"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 775
    const-string v2, "eSE"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    :cond_2
    return-object v0

    .line 762
    .end local v0    # "offHostSE":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You need a context on NfcAdapter to use the  getSupportedOffHostSecureElements APIs"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTagIntentAppPreferenceForUser(I)Ljava/util/Map;
    .locals 2
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2535
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isTagIntentAppPreferenceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2539
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda37;

    invoke-direct {v0, p1}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda37;-><init>(I)V

    .line 2540
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 2539
    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 2536
    :cond_0
    const-string v0, "NFC"

    const-string v1, "TagIntentAppPreference is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getWlcListenerDeviceInfo()Landroid/nfc/WlcListenerDeviceInfo;
    .locals 2

    .line 2742
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcWlcFeature:Z

    if-eqz v0, :cond_0

    .line 2745
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda42;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/WlcListenerDeviceInfo;

    return-object v0

    .line 2743
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist ignore(Landroid/nfc/Tag;ILandroid/nfc/NfcAdapter$OnTagRemovedListener;Landroid/os/Handler;)Z
    .locals 4
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "debounceMs"    # I
    .param p3, "tagRemovedListener"    # Landroid/nfc/NfcAdapter$OnTagRemovedListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 2202
    const/4 v0, 0x0

    .line 2203
    .local v0, "iListener":Landroid/nfc/ITagRemovedCallback$Stub;
    if-eqz p3, :cond_0

    .line 2204
    new-instance v1, Landroid/nfc/NfcAdapter$1;

    invoke-direct {v1, p0, p4, p3}, Landroid/nfc/NfcAdapter$1;-><init>(Landroid/nfc/NfcAdapter;Landroid/os/Handler;Landroid/nfc/NfcAdapter$OnTagRemovedListener;)V

    move-object v0, v1

    .line 2220
    :cond_0
    move-object v1, v0

    .line 2221
    .local v1, "passedListener":Landroid/nfc/ITagRemovedCallback$Stub;
    new-instance v2, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2, v1}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda1;-><init>(Landroid/nfc/Tag;ILandroid/nfc/ITagRemovedCallback$Stub;)V

    .line 2222
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2221
    invoke-static {v2, v3}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public blacklist indicateDataMigration(Z)V
    .locals 1
    .param p1, "inProgress"    # Z

    .line 2914
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p1}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda35;-><init>(Landroid/nfc/NfcAdapter;Z)V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 2915
    return-void
.end method

.method public greylist invokeBeam(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1905
    sget-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1906
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_0

    .line 1909
    monitor-exit v0

    .line 1910
    const/4 v0, 0x0

    return v0

    .line 1907
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    throw v1

    .line 1909
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isControllerAlwaysOn()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2408
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda5;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist isControllerAlwaysOnSupported()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2425
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasCeFeature:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2426
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2428
    :cond_1
    :goto_0
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda28;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    .line 1097
    invoke-static {}, Landroid/nfc/NfcAdapter;->isEnabledStatic()Z

    move-result v0

    return v0
.end method

.method public greylist isNdefPushEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2156
    sget-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2157
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_0

    .line 2160
    monitor-exit v0

    .line 2161
    const/4 v0, 0x0

    return v0

    .line 2158
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    throw v1

    .line 2160
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isObserveModeEnabled()Z
    .locals 2

    .line 1230
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda13;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist isObserveModeSupported()Z
    .locals 2

    .line 1220
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda16;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isReaderModeAnnotationSupported()Z
    .locals 2

    .line 1208
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda34;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist isReaderOptionEnabled()Z
    .locals 2

    .line 2094
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v0, :cond_0

    .line 2097
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda15;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 2095
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isReaderOptionSupported()Z
    .locals 2

    .line 2077
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v0, :cond_0

    .line 2080
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda21;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 2078
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isSecureNfcEnabled()Z
    .locals 2

    .line 2044
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasCeFeature:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2045
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2047
    :cond_1
    :goto_0
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda43;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist isSecureNfcSupported()Z
    .locals 2

    .line 2006
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasCeFeature:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2007
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2009
    :cond_1
    :goto_0
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda30;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist isTagIntentAllowed()Z
    .locals 2

    .line 2960
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v0, :cond_1

    .line 2963
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isTagIntentAppPreferenceSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2964
    const/4 v0, 0x1

    return v0

    .line 2966
    :cond_0
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda39;-><init>(Landroid/nfc/NfcAdapter;)V

    .line 2967
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2966
    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 2961
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isTagIntentAppPreferenceSupported()Z
    .locals 2

    .line 2556
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v0, :cond_0

    .line 2559
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda14;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 2557
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist isWlcEnabled()Z
    .locals 2

    .line 2662
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcWlcFeature:Z

    if-eqz v0, :cond_0

    .line 2665
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda4;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 2663
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist notifyHceDeactivated()V
    .locals 1

    .line 2634
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda23;-><init>()V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 2635
    return-void
.end method

.method public blacklist notifyPollingLoop(Landroid/nfc/cardemulation/PollingFrame;)V
    .locals 1
    .param p1, "pollingFrame"    # Landroid/nfc/cardemulation/PollingFrame;

    .line 2571
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda31;

    invoke-direct {v0, p1}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda31;-><init>(Landroid/nfc/cardemulation/PollingFrame;)V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 2572
    return-void
.end method

.method public blacklist notifyTestHceData(I[B)V
    .locals 1
    .param p1, "technology"    # I
    .param p2, "data"    # [B

    .line 2581
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda38;

    invoke-direct {v0, p1, p2}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda38;-><init>(I[B)V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 2582
    return-void
.end method

.method public blacklist pausePolling(I)V
    .locals 1
    .param p1, "timeoutInMs"    # I

    .line 1192
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda17;-><init>(I)V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 1193
    return-void
.end method

.method public whitelist registerControllerAlwaysOnListener(Ljava/util/concurrent/Executor;Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2446
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mControllerAlwaysOnListener:Landroid/nfc/NfcControllerAlwaysOnListener;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/NfcControllerAlwaysOnListener;->register(Ljava/util/concurrent/Executor;Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V

    .line 2447
    return-void
.end method

.method public whitelist registerNfcVendorNciCallback(Ljava/util/concurrent/Executor;Landroid/nfc/NfcAdapter$NfcVendorNciCallback;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$NfcVendorNciCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2852
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcVendorNciCallbackListener:Landroid/nfc/NfcVendorNciCallbackListener;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/NfcVendorNciCallbackListener;->register(Ljava/util/concurrent/Executor;Landroid/nfc/NfcAdapter$NfcVendorNciCallback;)V

    .line 2853
    return-void
.end method

.method public blacklist registerWlcStateListener(Ljava/util/concurrent/Executor;Landroid/nfc/NfcAdapter$WlcStateListener;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/nfc/NfcAdapter$WlcStateListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2702
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcWlcFeature:Z

    if-eqz v0, :cond_0

    .line 2705
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcWlcStateListener:Landroid/nfc/NfcWlcStateListener;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/NfcWlcStateListener;->register(Ljava/util/concurrent/Executor;Landroid/nfc/NfcAdapter$WlcStateListener;)V

    .line 2706
    return-void

    .line 2703
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist removeNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;)Z
    .locals 3
    .param p1, "unlockHandler"    # Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2307
    sget-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2308
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_1

    .line 2311
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2312
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2313
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2314
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda8;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)V

    .line 2317
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2314
    invoke-static {v0, v2}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2319
    :cond_0
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 2320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2309
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    throw v1

    .line 2311
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public whitelist resetDiscoveryTechnology(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1872
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcActivityManager;->resetDiscoveryTech(Landroid/app/Activity;)V

    .line 1873
    return-void
.end method

.method public blacklist resumePolling()V
    .locals 1

    .line 1264
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda26;-><init>()V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 1265
    return-void
.end method

.method public whitelist sendVendorNciMessage(III[B)I
    .locals 2
    .param p1, "mt"    # I
    .param p2, "gid"    # I
    .param p3, "oid"    # I
    .param p4, "payload"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2830
    const-string v0, "Payload must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2831
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda2;-><init>(III[B)V

    .line 2832
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2831
    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public greylist setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 2
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1333
    sget-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1334
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_0

    .line 1337
    monitor-exit v0

    .line 1338
    return-void

    .line 1335
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "uris":[Landroid/net/Uri;
    .end local p2    # "activity":Landroid/app/Activity;
    throw v1

    .line 1337
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "uris":[Landroid/net/Uri;
    .restart local p2    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V
    .locals 2
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1403
    sget-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1404
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_0

    .line 1407
    monitor-exit v0

    .line 1408
    return-void

    .line 1405
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "callback":Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .end local p2    # "activity":Landroid/app/Activity;
    throw v1

    .line 1407
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "callback":Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .restart local p2    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setControllerAlwaysOn(Z)Z
    .locals 3
    .param p1, "value"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2383
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasCeFeature:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2384
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2386
    :cond_1
    :goto_0
    move v0, p1

    .line 2388
    .local v0, "mode":I
    :try_start_0
    new-instance v1, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda24;

    invoke-direct {v1, v0}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda24;-><init>(I)V

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2391
    nop

    .line 2392
    const/4 v1, 0x1

    return v1

    .line 2389
    :catch_0
    move-exception v1

    .line 2390
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist setDiscoveryTechnology(Landroid/app/Activity;II)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pollTechnology"    # I
    .param p3, "listenTechnology"    # I

    .line 1840
    sget-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1841
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasCeFeature:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1842
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "pollTechnology":I
    .end local p3    # "listenTechnology":I
    throw v1

    .line 1844
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    .restart local p2    # "pollTechnology":I
    .restart local p3    # "listenTechnology":I
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1851
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->nfcSetDefaultDiscTech()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    and-int v1, p2, v0

    if-eq v1, v0, :cond_2

    and-int v1, p3, v0

    if-ne v1, v0, :cond_3

    .line 1854
    :cond_2
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 1855
    .local v0, "token":Landroid/os/Binder;
    new-instance v1, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, v0, p2, p3}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda27;-><init>(Landroid/nfc/NfcAdapter;Landroid/os/Binder;II)V

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 1858
    .end local v0    # "token":Landroid/os/Binder;
    goto :goto_1

    .line 1859
    :cond_3
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/nfc/NfcActivityManager;->setDiscoveryTech(Landroid/app/Activity;II)V

    .line 1861
    :goto_1
    return-void

    .line 1844
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public greylist setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;I)V
    .locals 2
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1502
    sget-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1503
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_0

    .line 1506
    monitor-exit v0

    .line 1507
    return-void

    .line 1504
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "message":Landroid/nfc/NdefMessage;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "flags":I
    throw v1

    .line 1506
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "message":Landroid/nfc/NdefMessage;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "flags":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public varargs greylist setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 2
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1488
    sget-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1489
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_0

    .line 1492
    monitor-exit v0

    .line 1493
    return-void

    .line 1490
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "message":Landroid/nfc/NdefMessage;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1

    .line 1492
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "message":Landroid/nfc/NdefMessage;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public varargs greylist setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 2
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1581
    sget-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1582
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_0

    .line 1585
    monitor-exit v0

    .line 1586
    return-void

    .line 1583
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "callback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1

    .line 1585
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "callback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setObserveModeEnabled(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .line 1250
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1254
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda6;-><init>(Landroid/nfc/NfcAdapter;Z)V

    .line 1255
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1254
    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1251
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You need a context on NfcAdapter to use the  observe mode APIs"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs greylist setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 2
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1632
    sget-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1633
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_0

    .line 1636
    monitor-exit v0

    .line 1637
    return-void

    .line 1634
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1

    .line 1636
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setReaderModePollingEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1784
    sget-object v0, Landroid/nfc/NfcAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1785
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_1

    .line 1788
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1789
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 1790
    .local v0, "token":Landroid/os/Binder;
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1000

    .line 1791
    .local v1, "flags":I
    :goto_0
    new-instance v2, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v0, v1}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda12;-><init>(Landroid/nfc/NfcAdapter;Landroid/os/Binder;I)V

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 1793
    return-void

    .line 1786
    .end local v0    # "token":Landroid/os/Binder;
    .end local v1    # "flags":I
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "enable":Z
    throw v1

    .line 1788
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "enable":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist setTagIntentAppPreferenceForUser(ILjava/lang/String;Z)I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "allow"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2494
    const-string v0, "pkg cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2495
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isTagIntentAppPreferenceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2499
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2, p3}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda7;-><init>(ILjava/lang/String;Z)V

    .line 2501
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2499
    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 2496
    :cond_0
    const-string v0, "NFC"

    const-string v1, "TagIntentAppPreference is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist setWlcEnabled(Z)Z
    .locals 2
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2647
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcWlcFeature:Z

    if-eqz v0, :cond_0

    .line 2650
    new-instance v0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda3;-><init>(Z)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 2648
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist unregisterControllerAlwaysOnListener(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2464
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mControllerAlwaysOnListener:Landroid/nfc/NfcControllerAlwaysOnListener;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcControllerAlwaysOnListener;->unregister(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V

    .line 2465
    return-void
.end method

.method public whitelist unregisterNfcVendorNciCallback(Landroid/nfc/NfcAdapter$NfcVendorNciCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$NfcVendorNciCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2870
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcVendorNciCallbackListener:Landroid/nfc/NfcVendorNciCallbackListener;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcVendorNciCallbackListener;->unregister(Landroid/nfc/NfcAdapter$NfcVendorNciCallback;)V

    .line 2871
    return-void
.end method

.method public blacklist unregisterWlcStateListener(Landroid/nfc/NfcAdapter$WlcStateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/nfc/NfcAdapter$WlcStateListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2726
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcWlcFeature:Z

    if-eqz v0, :cond_0

    .line 2729
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcWlcStateListener:Landroid/nfc/NfcWlcStateListener;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcWlcStateListener;->unregister(Landroid/nfc/NfcAdapter$WlcStateListener;)V

    .line 2730
    return-void

    .line 2727
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
