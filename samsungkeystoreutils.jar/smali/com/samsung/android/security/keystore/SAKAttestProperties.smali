.class public Lcom/samsung/android/security/keystore/SAKAttestProperties;
.super Ljava/lang/Object;
.source "SAKAttestProperties.java"


# static fields
.field public static final SN_C2PA_SIGN:Ljava/lang/String; = "C2PASigning"

.field public static final SN_CLIENT_AUTH:Ljava/lang/String; = "clientAuth"

.field public static final SN_CODE_SIGN:Ljava/lang/String; = "codeSigning"

.field public static final SN_DOCUMENT_SIGNING:Ljava/lang/String; = "documentSigning"

.field public static final SN_DVCS:Ljava/lang/String; = "DVCS"

.field public static final SN_EAP_OVER_LAN:Ljava/lang/String; = "eapOverLan"

.field public static final SN_EAP_OVER_PPP:Ljava/lang/String; = "eapOverPPP"

.field public static final SN_EMAIL_PROTECT:Ljava/lang/String; = "emailProtection"

.field public static final SN_IP_SEC_END_SYSTEM:Ljava/lang/String; = "ipsecEndSystem"

.field public static final SN_IP_SEC_TUNNEL:Ljava/lang/String; = "ipsecTunnel"

.field public static final SN_IP_SEC_USER:Ljava/lang/String; = "ipsecUser"

.field public static final SN_OCSP_SIGN:Ljava/lang/String; = "OCSPSigning"

.field public static final SN_SERVER_AUTH:Ljava/lang/String; = "serverAuth"

.field public static final SN_TIME_STAMP:Ljava/lang/String; = "timeStamping"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertEKUStringToOID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "timeStamping"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "OCSPSigning"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "codeSigning"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "C2PASigning"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "clientAuth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "documentSigning"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_6
    const-string v0, "eapOverPPP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_7
    const-string v0, "eapOverLan"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_8
    const-string v0, "emailProtection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_9
    const-string v0, "DVCS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string v0, "ipsecUser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_b
    const-string v0, "ipsecTunnel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_c
    const-string v0, "serverAuth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_d
    const-string v0, "ipsecEndSystem"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "1.3.6.1.4.1.311.76.59.1.9"

    return-object v0

    :pswitch_1
    const-string v0, "1.3.6.1.5.5.7.3.36"

    return-object v0

    :pswitch_2
    const-string v0, "1.3.6.1.5.5.7.3.14"

    return-object v0

    :pswitch_3
    const-string v0, "1.3.6.1.5.5.7.3.13"

    return-object v0

    :pswitch_4
    const-string v0, "1.3.6.1.5.5.7.3.10"

    return-object v0

    :pswitch_5
    const-string v0, "1.3.6.1.5.5.7.3.9"

    return-object v0

    :pswitch_6
    const-string v0, "1.3.6.1.5.5.7.3.8"

    return-object v0

    :pswitch_7
    const-string v0, "1.3.6.1.5.5.7.3.7"

    return-object v0

    :pswitch_8
    const-string v0, "1.3.6.1.5.5.7.3.6"

    return-object v0

    :pswitch_9
    const-string v0, "1.3.6.1.5.5.7.3.5"

    return-object v0

    :pswitch_a
    const-string v0, "1.3.6.1.5.5.7.3.4"

    return-object v0

    :pswitch_b
    const-string v0, "1.3.6.1.5.5.7.3.3"

    return-object v0

    :pswitch_c
    const-string v0, "1.3.6.1.5.5.7.3.2"

    return-object v0

    :pswitch_d
    const-string v0, "1.3.6.1.5.5.7.3.1"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fa32fc0 -> :sswitch_d
        -0x6cddd875 -> :sswitch_c
        -0x6c78392e -> :sswitch_b
        -0x48094b4b -> :sswitch_a
        0x203482 -> :sswitch_9
        0x9626f95 -> :sswitch_8
        0x2397b631 -> :sswitch_7
        0x2397c308 -> :sswitch_6
        0x3736e76a -> :sswitch_5
        0x41ad6813 -> :sswitch_4
        0x43731265 -> :sswitch_3
        0x468c5a58 -> :sswitch_2
        0x4a0ae494 -> :sswitch_1
        0x62a0332c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
