.class public Lcom/android/internal/policy/impl/PasswordUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PasswordUnlockScreen$MiuiPasswordEntryTextWatcher;,
        Lcom/android/internal/policy/impl/PasswordUnlockScreen$Injector;
    }
.end annotation


# static fields
.field private static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PasswordUnlockScreen"


# instance fields
.field private final imm:Landroid/view/inputmethod/InputMethodManager;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mCreationHardKeyboardHidden:I

.field private final mCreationOrientation:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private final mIsAlpha:Z

.field mIsLockByFindDevice:Z
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private final mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private final mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLastNumber:Ljava/lang/String;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPasswordEntry:Landroid/widget/EditText;

.field private mPinText:Landroid/widget/TextView;

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mResuming:Z

.field private final mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private final mUseSystemIME:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 13
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUseSystemIME:Z

    .line 117
    iget v1, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    .line 118
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    .line 119
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 120
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 121
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 124
    .local v8, layoutInflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    .line 125
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isEmergencyCircleEnable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 126
    const v1, 0x109014f

    const/4 v2, 0x1

    invoke-virtual {v8, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 144
    :goto_0
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v6, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 148
    const-string v1, "enterprise_policy"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 150
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 153
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v11

    .line 154
    .local v11, quality:I
    const/high16 v1, 0x4

    if-eq v1, v11, :cond_1

    const/high16 v1, 0x5

    if-eq v1, v11, :cond_1

    const/high16 v1, 0x6

    if-ne v1, v11, :cond_f

    :cond_1
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsAlpha:Z

    .line 158
    const v1, 0x102022d

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 159
    const v1, 0x1020361

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen$MiuiPasswordEntryTextWatcher;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$MiuiPasswordEntryTextWatcher;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .local v9, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_2

    move-object v1, v9

    .line 165
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 166
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 169
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 171
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsAlpha:Z

    if-eqz v1, :cond_10

    .line 172
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const v2, 0x104072c

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 177
    .end local v9           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    :goto_2
    new-instance v1, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, p0, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 178
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setEnableHaptics(Z)V

    .line 179
    const/4 v7, 0x0

    .line 180
    .local v7, imeOrDeleteButtonVisible:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsAlpha:Z

    if-eqz v1, :cond_11

    .line 182
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 183
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 213
    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDirectCallToEcc()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 214
    const v1, 0x1020361

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 215
    const v1, 0x1020340

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 216
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v2, 0x10403e4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 218
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 219
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 241
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsAlpha:Z

    if-eqz v1, :cond_13

    .line 242
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const v2, 0x800081

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    :goto_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 276
    const v1, 0x1020364

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 277
    .local v12, switchImeButton:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 279
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsAlpha:Z

    if-eqz v1, :cond_6

    if-eqz v12, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 280
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    const/4 v7, 0x1

    .line 282
    new-instance v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$6;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    invoke-virtual {v12, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 292
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->disableDevicePermanently()V

    .line 296
    :cond_7
    if-nez v7, :cond_8

    .line 297
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 298
    .restart local v9       #params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_8

    move-object v1, v9

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v9           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    const/high16 v1, 0x4c00

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->setBackgroundColor(I)V
    invoke-static {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$Injector;->initialize(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    return-void

    .end local v7           #imeOrDeleteButtonVisible:Z
    .end local v11           #quality:I
    .end local v12           #switchImeButton:Landroid/view/View;
    :cond_9
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDualClockTablet()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 128
    const v1, 0x1090145

    const/4 v2, 0x1

    invoke-virtual {v8, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 130
    :cond_a
    const v1, 0x1090079

    const/4 v2, 0x1

    invoke-virtual {v8, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 133
    :cond_b
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isEmergencyCircleEnable()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaCameraModel()Z

    move-result v1

    if-nez v1, :cond_c

    .line 134
    const v1, 0x109014f

    const/4 v2, 0x1

    invoke-virtual {v8, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 135
    :cond_c
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaCameraModel()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 136
    const v1, 0x109014e

    const/4 v2, 0x1

    invoke-virtual {v8, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 137
    :cond_d
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDualClockTablet()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 138
    const v1, 0x1090144

    const/4 v2, 0x1

    invoke-virtual {v8, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 140
    :cond_e
    const v1, 0x1090077

    const/4 v2, 0x1

    invoke-virtual {v8, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 154
    .restart local v11       #quality:I
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 174
    .restart local v9       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_10
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const v2, 0x104072d

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_2

    .line 186
    .end local v9           #params:Landroid/view/ViewGroup$LayoutParams;
    .restart local v7       #imeOrDeleteButtonVisible:Z
    :cond_11
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 187
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    const/4 v1, 0x4

    :goto_5
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 192
    const v1, 0x1020363

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 193
    .local v10, pinDelete:Landroid/view/View;
    if-eqz v10, :cond_4

    .line 194
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    const/4 v7, 0x1

    .line 196
    new-instance v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    new-instance v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_3

    .line 187
    .end local v10           #pinDelete:Landroid/view/View;
    :cond_12
    const/4 v1, 0x0

    goto :goto_5

    .line 248
    :cond_13
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 249
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const v2, 0x800012

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_4
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/widget/PasswordEntryKeyboardHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLastNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLastNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mResuming:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/widget/PasswordEntryKeyboardView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    return-object v0
.end method

.method private disableDevicePermanently()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 515
    const-string v0, "PasswordUnlockScreen"

    const-string v1, "disableDevicePermanently start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 517
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x10401f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    const/4 v1, 0x0

    .line 470
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 472
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 473
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$7;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$7;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$7;->start()Landroid/os/CountDownTimer;

    .line 491
    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .parameter "imm"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 315
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 318
    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 320
    .local v2, filteredImisCount:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 322
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 348
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 323
    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 326
    .local v8, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 327
    add-int/lit8 v2, v2, 0x1

    .line 328
    goto :goto_0

    .line 331
    :cond_2
    const/4 v0, 0x0

    .line 332
    .local v0, auxCount:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 333
    .local v7, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 337
    .end local v7           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 342
    .local v6, nonAuxCount:I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 343
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 344
    goto :goto_0

    .line 348
    .end local v0           #auxCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #nonAuxCount:I
    .end local v8           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .locals 7

    .prologue
    .line 496
    const/4 v2, 0x0

    .line 497
    .local v2, lDeviceDisableForMaxFailedAttempt:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 499
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v3

    .line 500
    .local v3, lMaxNumFailedAttemptForDisable:I
    const-string v4, "PasswordUnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max failed attempt for device disable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-lez v3, :cond_0

    .line 504
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v1

    .line 505
    .local v1, lCurNumFailedAttempts:I
    const-string v4, "PasswordUnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current failed attempt for device  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    if-lt v1, v3, :cond_1

    const/4 v2, 0x1

    .line 509
    .end local v1           #lCurNumFailedAttempts:I
    :cond_0
    :goto_0
    const-string v4, "PasswordUnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return v2

    .line 506
    .restart local v1       #lCurNumFailedAttempts:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private verifyPasswordAndUnlock()V
    .locals 14

    .prologue
    .line 408
    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, entry:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 411
    const/4 v3, 0x0

    .line 412
    .local v3, enforcePwdChange:Z
    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v11}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v11

    if-lez v11, :cond_0

    .line 413
    const/4 v3, 0x1

    .line 414
    :cond_0
    if-eqz v3, :cond_1

    .line 415
    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    .line 416
    .local v7, mDPM:Landroid/app/admin/DevicePolicyManager;
    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v10

    .line 417
    .local v10, quality:I
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v9

    .line 418
    .local v9, minLength:I
    invoke-virtual {v7, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v8

    .line 419
    .local v8, maxLength:I
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v5, it:Landroid/content/Intent;
    const-string v11, "lockscreen.password_type"

    invoke-virtual {v5, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    const-string v11, "lockscreen.password_min"

    invoke-virtual {v5, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 422
    const-string v11, "lockscreen.password_max"

    invoke-virtual {v5, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 423
    const-string v11, "lockscreen.password_old"

    invoke-virtual {v5, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    const-string v11, "confirm_credentials"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 425
    const/high16 v11, 0x1000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 426
    const/high16 v11, 0x40

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 427
    const/high16 v11, 0x80

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 428
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 429
    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 432
    .end local v5           #it:Landroid/content/Intent;
    .end local v7           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v8           #maxLength:I
    .end local v9           #minLength:I
    .end local v10           #quality:I
    :cond_1
    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 433
    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v12, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v11}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    invoke-static {p0, v4}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$Injector;->clearPinLockForFindDevice(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Ljava/lang/String;)V

    new-instance v2, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v11}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .local v2, dem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v2, v4}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .end local v2           #dem:Landroid/dirEncryption/DirEncryptionManager;
    .end local v3           #enforcePwdChange:Z
    :cond_2
    :goto_0
    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 466
    return-void

    .line 441
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x3

    if-le v11, v12, :cond_6

    .line 444
    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v11}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    .line 446
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v6

    .line 447
    .local v6, lDeviceDisableForMaxFailedAttempt:Z
    if-nez v6, :cond_5

    .line 449
    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v11

    rem-int/lit8 v11, v11, 0x5

    if-nez v11, :cond_4

    .line 451
    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 452
    .local v0, deadline:J
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 459
    .end local v0           #deadline:J
    :cond_4
    :goto_1
    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v12, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    const v13, 0x10403e8

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->disableDevicePermanently()V

    goto :goto_1

    .line 461
    .end local v6           #lDeviceDisableForMaxFailedAttempt:Z
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 462
    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v12, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    const v13, 0x10403e8

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 405
    return-void
.end method

.method getKeyboardView()Lcom/android/internal/widget/PasswordEntryKeyboardView;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    return-object v0
.end method

.method getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method public isAlphaOrDefaultImeIsCustomizedForMiui()Z
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsAlpha:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lmiui/view/inputmethod/CustomizedImeForMiui;->defaultImeIsCustomizedForMiui(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->isAlphaOrDefaultImeIsCustomizedForMiui()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 532
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 533
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 534
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    if-eq v1, v2, :cond_1

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 538
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 543
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 544
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    if-eq v0, v1, :cond_1

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 548
    :cond_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 557
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 559
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->verifyPasswordAndUnlock()V

    .line 560
    const/4 v0, 0x1

    .line 562
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 2
    .parameter "isKeyboardOpen"

    .prologue
    .line 552
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 553
    return-void

    .line 552
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 368
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 369
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mResuming:Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->showImmOnResume()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    .local v2, lDeviceDisableForMaxFailedAttempt:Z
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .local v0, deadline:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    .line 391
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 399
    .end local v0           #deadline:J
    :cond_0
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mResuming:Z

    .line 400
    return-void

    .line 396
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->disableDevicePermanently()V

    goto :goto_0
.end method


.method verifyPassword(Ljava/lang/String;)V
    .locals 2
    .parameter "password"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$Injector;->clearPinLockForFindDevice(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showImmOnResume()V
    .locals 4
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsAlpha:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "torch_state"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method