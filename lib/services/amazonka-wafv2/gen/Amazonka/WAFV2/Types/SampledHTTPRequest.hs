{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.WAFV2.Types.SampledHTTPRequest
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WAFV2.Types.SampledHTTPRequest where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.WAFV2.Types.CaptchaResponse
import Amazonka.WAFV2.Types.HTTPHeader
import Amazonka.WAFV2.Types.HTTPRequest
import Amazonka.WAFV2.Types.Label

-- | Represents a single sampled web request. The response from
-- GetSampledRequests includes a @SampledHTTPRequests@ complex type that
-- appears as @SampledRequests@ in the response syntax.
-- @SampledHTTPRequests@ contains an array of @SampledHTTPRequest@ objects.
--
-- /See:/ 'newSampledHTTPRequest' smart constructor.
data SampledHTTPRequest = SampledHTTPRequest'
  { -- | The time at which WAF received the request from your Amazon Web Services
    -- resource, in Unix time format (in seconds).
    timestamp :: Prelude.Maybe Core.POSIX,
    -- | The @CAPTCHA@ response for the request.
    captchaResponse :: Prelude.Maybe CaptchaResponse,
    -- | The name of the @Rule@ that the request matched. For managed rule
    -- groups, the format for this name is
    -- @\<vendor name>#\<managed rule group name>#\<rule name>@. For your own
    -- rule groups, the format for this name is
    -- @\<rule group name>#\<rule name>@. If the rule is not in a rule group,
    -- this field is absent.
    ruleNameWithinRuleGroup :: Prelude.Maybe Prelude.Text,
    -- | Labels applied to the web request by matching rules. WAF applies fully
    -- qualified labels to matching web requests. A fully qualified label is
    -- the concatenation of a label namespace and a rule label. The rule\'s
    -- rule group or web ACL defines the label namespace.
    --
    -- For example,
    -- @awswaf:111122223333:myRuleGroup:testRules:testNS1:testNS2:labelNameA@
    -- or @awswaf:managed:aws:managed-rule-set:header:encoding:utf8@.
    labels :: Prelude.Maybe [Label],
    -- | The action for the @Rule@ that the request matched: @Allow@, @Block@, or
    -- @Count@.
    action :: Prelude.Maybe Prelude.Text,
    -- | Custom request headers inserted by WAF into the request, according to
    -- the custom request configuration for the matching rule action.
    requestHeadersInserted :: Prelude.Maybe [HTTPHeader],
    -- | The response code that was sent for the request.
    responseCodeSent :: Prelude.Maybe Prelude.Natural,
    -- | A complex type that contains detailed information about the request.
    request :: HTTPRequest,
    -- | A value that indicates how one result in the response relates
    -- proportionally to other results in the response. For example, a result
    -- that has a weight of @2@ represents roughly twice as many web requests
    -- as a result that has a weight of @1@.
    weight :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SampledHTTPRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timestamp', 'sampledHTTPRequest_timestamp' - The time at which WAF received the request from your Amazon Web Services
-- resource, in Unix time format (in seconds).
--
-- 'captchaResponse', 'sampledHTTPRequest_captchaResponse' - The @CAPTCHA@ response for the request.
--
-- 'ruleNameWithinRuleGroup', 'sampledHTTPRequest_ruleNameWithinRuleGroup' - The name of the @Rule@ that the request matched. For managed rule
-- groups, the format for this name is
-- @\<vendor name>#\<managed rule group name>#\<rule name>@. For your own
-- rule groups, the format for this name is
-- @\<rule group name>#\<rule name>@. If the rule is not in a rule group,
-- this field is absent.
--
-- 'labels', 'sampledHTTPRequest_labels' - Labels applied to the web request by matching rules. WAF applies fully
-- qualified labels to matching web requests. A fully qualified label is
-- the concatenation of a label namespace and a rule label. The rule\'s
-- rule group or web ACL defines the label namespace.
--
-- For example,
-- @awswaf:111122223333:myRuleGroup:testRules:testNS1:testNS2:labelNameA@
-- or @awswaf:managed:aws:managed-rule-set:header:encoding:utf8@.
--
-- 'action', 'sampledHTTPRequest_action' - The action for the @Rule@ that the request matched: @Allow@, @Block@, or
-- @Count@.
--
-- 'requestHeadersInserted', 'sampledHTTPRequest_requestHeadersInserted' - Custom request headers inserted by WAF into the request, according to
-- the custom request configuration for the matching rule action.
--
-- 'responseCodeSent', 'sampledHTTPRequest_responseCodeSent' - The response code that was sent for the request.
--
-- 'request', 'sampledHTTPRequest_request' - A complex type that contains detailed information about the request.
--
-- 'weight', 'sampledHTTPRequest_weight' - A value that indicates how one result in the response relates
-- proportionally to other results in the response. For example, a result
-- that has a weight of @2@ represents roughly twice as many web requests
-- as a result that has a weight of @1@.
newSampledHTTPRequest ::
  -- | 'request'
  HTTPRequest ->
  -- | 'weight'
  Prelude.Natural ->
  SampledHTTPRequest
newSampledHTTPRequest pRequest_ pWeight_ =
  SampledHTTPRequest'
    { timestamp = Prelude.Nothing,
      captchaResponse = Prelude.Nothing,
      ruleNameWithinRuleGroup = Prelude.Nothing,
      labels = Prelude.Nothing,
      action = Prelude.Nothing,
      requestHeadersInserted = Prelude.Nothing,
      responseCodeSent = Prelude.Nothing,
      request = pRequest_,
      weight = pWeight_
    }

-- | The time at which WAF received the request from your Amazon Web Services
-- resource, in Unix time format (in seconds).
sampledHTTPRequest_timestamp :: Lens.Lens' SampledHTTPRequest (Prelude.Maybe Prelude.UTCTime)
sampledHTTPRequest_timestamp = Lens.lens (\SampledHTTPRequest' {timestamp} -> timestamp) (\s@SampledHTTPRequest' {} a -> s {timestamp = a} :: SampledHTTPRequest) Prelude.. Lens.mapping Core._Time

-- | The @CAPTCHA@ response for the request.
sampledHTTPRequest_captchaResponse :: Lens.Lens' SampledHTTPRequest (Prelude.Maybe CaptchaResponse)
sampledHTTPRequest_captchaResponse = Lens.lens (\SampledHTTPRequest' {captchaResponse} -> captchaResponse) (\s@SampledHTTPRequest' {} a -> s {captchaResponse = a} :: SampledHTTPRequest)

-- | The name of the @Rule@ that the request matched. For managed rule
-- groups, the format for this name is
-- @\<vendor name>#\<managed rule group name>#\<rule name>@. For your own
-- rule groups, the format for this name is
-- @\<rule group name>#\<rule name>@. If the rule is not in a rule group,
-- this field is absent.
sampledHTTPRequest_ruleNameWithinRuleGroup :: Lens.Lens' SampledHTTPRequest (Prelude.Maybe Prelude.Text)
sampledHTTPRequest_ruleNameWithinRuleGroup = Lens.lens (\SampledHTTPRequest' {ruleNameWithinRuleGroup} -> ruleNameWithinRuleGroup) (\s@SampledHTTPRequest' {} a -> s {ruleNameWithinRuleGroup = a} :: SampledHTTPRequest)

-- | Labels applied to the web request by matching rules. WAF applies fully
-- qualified labels to matching web requests. A fully qualified label is
-- the concatenation of a label namespace and a rule label. The rule\'s
-- rule group or web ACL defines the label namespace.
--
-- For example,
-- @awswaf:111122223333:myRuleGroup:testRules:testNS1:testNS2:labelNameA@
-- or @awswaf:managed:aws:managed-rule-set:header:encoding:utf8@.
sampledHTTPRequest_labels :: Lens.Lens' SampledHTTPRequest (Prelude.Maybe [Label])
sampledHTTPRequest_labels = Lens.lens (\SampledHTTPRequest' {labels} -> labels) (\s@SampledHTTPRequest' {} a -> s {labels = a} :: SampledHTTPRequest) Prelude.. Lens.mapping Lens.coerced

-- | The action for the @Rule@ that the request matched: @Allow@, @Block@, or
-- @Count@.
sampledHTTPRequest_action :: Lens.Lens' SampledHTTPRequest (Prelude.Maybe Prelude.Text)
sampledHTTPRequest_action = Lens.lens (\SampledHTTPRequest' {action} -> action) (\s@SampledHTTPRequest' {} a -> s {action = a} :: SampledHTTPRequest)

-- | Custom request headers inserted by WAF into the request, according to
-- the custom request configuration for the matching rule action.
sampledHTTPRequest_requestHeadersInserted :: Lens.Lens' SampledHTTPRequest (Prelude.Maybe [HTTPHeader])
sampledHTTPRequest_requestHeadersInserted = Lens.lens (\SampledHTTPRequest' {requestHeadersInserted} -> requestHeadersInserted) (\s@SampledHTTPRequest' {} a -> s {requestHeadersInserted = a} :: SampledHTTPRequest) Prelude.. Lens.mapping Lens.coerced

-- | The response code that was sent for the request.
sampledHTTPRequest_responseCodeSent :: Lens.Lens' SampledHTTPRequest (Prelude.Maybe Prelude.Natural)
sampledHTTPRequest_responseCodeSent = Lens.lens (\SampledHTTPRequest' {responseCodeSent} -> responseCodeSent) (\s@SampledHTTPRequest' {} a -> s {responseCodeSent = a} :: SampledHTTPRequest)

-- | A complex type that contains detailed information about the request.
sampledHTTPRequest_request :: Lens.Lens' SampledHTTPRequest HTTPRequest
sampledHTTPRequest_request = Lens.lens (\SampledHTTPRequest' {request} -> request) (\s@SampledHTTPRequest' {} a -> s {request = a} :: SampledHTTPRequest)

-- | A value that indicates how one result in the response relates
-- proportionally to other results in the response. For example, a result
-- that has a weight of @2@ represents roughly twice as many web requests
-- as a result that has a weight of @1@.
sampledHTTPRequest_weight :: Lens.Lens' SampledHTTPRequest Prelude.Natural
sampledHTTPRequest_weight = Lens.lens (\SampledHTTPRequest' {weight} -> weight) (\s@SampledHTTPRequest' {} a -> s {weight = a} :: SampledHTTPRequest)

instance Core.FromJSON SampledHTTPRequest where
  parseJSON =
    Core.withObject
      "SampledHTTPRequest"
      ( \x ->
          SampledHTTPRequest'
            Prelude.<$> (x Core..:? "Timestamp")
            Prelude.<*> (x Core..:? "CaptchaResponse")
            Prelude.<*> (x Core..:? "RuleNameWithinRuleGroup")
            Prelude.<*> (x Core..:? "Labels" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Action")
            Prelude.<*> ( x Core..:? "RequestHeadersInserted"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "ResponseCodeSent")
            Prelude.<*> (x Core..: "Request")
            Prelude.<*> (x Core..: "Weight")
      )

instance Prelude.Hashable SampledHTTPRequest where
  hashWithSalt _salt SampledHTTPRequest' {..} =
    _salt `Prelude.hashWithSalt` timestamp
      `Prelude.hashWithSalt` captchaResponse
      `Prelude.hashWithSalt` ruleNameWithinRuleGroup
      `Prelude.hashWithSalt` labels
      `Prelude.hashWithSalt` action
      `Prelude.hashWithSalt` requestHeadersInserted
      `Prelude.hashWithSalt` responseCodeSent
      `Prelude.hashWithSalt` request
      `Prelude.hashWithSalt` weight

instance Prelude.NFData SampledHTTPRequest where
  rnf SampledHTTPRequest' {..} =
    Prelude.rnf timestamp
      `Prelude.seq` Prelude.rnf captchaResponse
      `Prelude.seq` Prelude.rnf ruleNameWithinRuleGroup
      `Prelude.seq` Prelude.rnf labels
      `Prelude.seq` Prelude.rnf action
      `Prelude.seq` Prelude.rnf requestHeadersInserted
      `Prelude.seq` Prelude.rnf responseCodeSent
      `Prelude.seq` Prelude.rnf request
      `Prelude.seq` Prelude.rnf weight
